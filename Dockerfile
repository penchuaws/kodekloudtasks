FROM python:3.6-alpine

# Create a non-root user
RUN adduser --disabled-password myuser

# Set the working directory
WORKDIR /webapp

# Copy the required files to the image
COPY /webapp/app.py /webapp/app/
COPY /webapp/requirements.txt /webapp/app/
COPY /webapp/templates /webapp/app/


# Install the required packages
#RUN pip install -r requirements.txt
RUN pip install --no-cache-dir -r /webapp/app/requirements.txt

# Set the ownership of the files to the non-root user
RUN chown -R myuser:myuser /webapp

# Set the user to run the application as
USER myuser

# Expose the necessary port
EXPOSE 5000

# Run the application
CMD [ "python", "app/app.py" ]
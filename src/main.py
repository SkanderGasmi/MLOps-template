import numpy as np
import pandas as pd
import tensorflow as tf

# Sample dataset
data = pd.DataFrame({
    'feature': np.random.rand(100),
    'label': np.random.randint(0, 2, 100)
})

# Simple neural network model
model = tf.keras.Sequential([
    tf.keras.layers.Dense(16, activation='relu', input_shape=(1,)),
    tf.keras.layers.Dense(1, activation='sigmoid')
])

model.compile(optimizer='adam', loss='binary_crossentropy', metrics=['accuracy'])

# Prepare data
X = data[['feature']].values
y = data['label'].values

# Train the model
model.fit(X, y, epochs=5)

# Evaluate the model
loss, accuracy = model.evaluate(X, y)
print(f'Accuracy: {accuracy}')

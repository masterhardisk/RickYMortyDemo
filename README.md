<img src="https://iili.io/2AU3KdJ.th.png" width="200" height="200" alt="Rick and Morty Viewer Logo"/>

# RickYMortyDemo

## Descripción

**RickYMortyDemo** es una aplicación de demostración técnica desarrollada para mostrar el uso de la **API de Rick and Morty** (https://rickandmortyapi.com/) utilizando la librería **Rick-and-Morty-Swift-API** creada por benjaminbruch. La aplicación está construida con **SwiftUI** y **Swift 6**, siguiendo el patrón de diseño **MVVM** (Model-View-ViewModel) para garantizar una arquitectura limpia y escalable.

Además de la integración con la API, **RickYMortyDemo** implementa **Swift Data** para gestionar la persistencia local de los datos. Los personajes y sus detalles se almacenan localmente cuando se cargan por primera vez, y se actualizan conforme el usuario interactúa con la aplicación. Si la aplicación detecta que no hay conexión a Internet, se cargan los datos almacenados previamente para asegurar una experiencia de usuario sin interrupciones.

## Características

- 🔍 **Lista de Personajes**: Explora todos los personajes de la serie **Rick and Morty**.
- 🧑‍⚕️ **Detalles del Personaje**: Al seleccionar un personaje, podrás ver información detallada como su especie, estado, origen, entre otros datos.
- ⚡ **Desarrollado con tecnologías modernas**: Implementado con **SwiftUI** y **Swift 6**, aprovechando las últimas capacidades de iOS.
- 📱 **Arquitectura MVVM**: Código estructurado de manera clara y mantenible utilizando el patrón **Model-View-ViewModel**.
- 🎨 **Interfaz de usuario moderna y fluida**: Diseño adaptado para ser intuitivo y visualmente atractivo, alineado con las guías de diseño de Apple.
- 🧪 **Pruebas Unitarias con Swift Testing**: La aplicación incluye pruebas unitarias implementadas con **Swift Testing** para asegurar el correcto funcionamiento del código y mejorar la mantenibilidad.
- 💾 **Persistencia de Datos con Swift Data**: Los datos de los personajes se almacenan localmente para mejorar la experiencia del usuario y permitir el acceso a los datos incluso sin conexión a Internet.
- 🌐 **Gestión de Conexión a Internet**: Si la aplicación detecta la falta de conexión a Internet, los datos previamente almacenados se cargan desde el almacenamiento local para asegurar que el usuario pueda seguir interactuando con la aplicación.

## Requisitos

- **iOS 18.0** o superior.

## Instalación

1. Clona este repositorio en tu máquina local:
   ```bash
   git clone https://github.com/tuusuario/rickymortydemo.git

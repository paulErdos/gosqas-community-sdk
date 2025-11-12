#!/.venv/bin/python3

import aiohttp

async def get_new_device_key():
    base_url = "https://gosqasbe.azurewebsites.net/api"
    #base_url = "https://gdtprodbackend.azurewebsites.net/api"
    async with aiohttp.ClientSession() as session:
        response = await session.get(f"{base_url}/getNewDeviceKey")
        return await response.text()


if __name__ == '__main__':
    import asyncio
    result = asyncio.run(get_new_device_key())
    print(result)

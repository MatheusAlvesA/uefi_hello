#include <Uefi.h>
#include <Library/UefiLib.h>

/**
 * Ponto de entrada da aplicação EFI
 *
 * @param[in] ImageHandle  The firmware allocated handle for the EFI image
 * @param[in] SystemTable  A pointer to the EFI System Table
 *
 * @retval EFI_SUCCESS  O EntryPoint foi executado com sucesso
 * @retval other        O EntryPoint falhou
 **/
EFI_STATUS
EFIAPI
EntryPoint(
    IN EFI_HANDLE ImageHandle,
    IN EFI_SYSTEM_TABLE *SystemTable)
{
    Print(L"Olá mundo!\n");

    // Aguarde 10 segundos antes de terminar
    SystemTable->BootServices->Stall(10000000);
    return EFI_SUCCESS;
}

.class public interface abstract Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;
.super Ljava/lang/Object;
.source "ISehHermesCommand.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string/jumbo v2, "vendor$samsung$hardware$security$hermes$ISehHermesCommand"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getBigdataLog()Lvendor/samsung/hardware/security/hermes/SehCommandResult;
.end method

.method public abstract getInterfaceHash()Ljava/lang/String;
.end method

.method public abstract getInterfaceVersion()I
.end method

.method public abstract getSecureHWInfo()Lvendor/samsung/hardware/security/hermes/SehCommandResult;
.end method

.method public abstract provisioning()Lvendor/samsung/hardware/security/hermes/SehCommandResult;
.end method

.method public abstract saveBigdataLog([B)Lvendor/samsung/hardware/security/hermes/SehCommandResult;
.end method

.method public abstract secnvmPowerOff()Lvendor/samsung/hardware/security/hermes/SehCommandResult;
.end method

.method public abstract secnvmPowerOn()Lvendor/samsung/hardware/security/hermes/SehCommandResult;
.end method

.method public abstract selftest()Lvendor/samsung/hardware/security/hermes/SehCommandResult;
.end method

.method public abstract terminateService()Lvendor/samsung/hardware/security/hermes/SehCommandResult;
.end method

.method public abstract updateCryptoFW()Lvendor/samsung/hardware/security/hermes/SehCommandResult;
.end method

.method public abstract verifyProvisioning()Lvendor/samsung/hardware/security/hermes/SehCommandResult;
.end method

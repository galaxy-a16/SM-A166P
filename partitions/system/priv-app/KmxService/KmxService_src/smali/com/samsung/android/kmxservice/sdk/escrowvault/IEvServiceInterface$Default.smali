.class public Lcom/samsung/android/kmxservice/sdk/escrowvault/IEvServiceInterface$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/kmxservice/sdk/escrowvault/IEvServiceInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/sdk/escrowvault/IEvServiceInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public canDeleteCredential()V
    .locals 0

    return-void
.end method

.method public deleteCredential([BLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public deleteCredentialWithTA(Z)V
    .locals 0

    return-void
.end method

.method public deleteEscrowInfo()V
    .locals 0

    return-void
.end method

.method public deleteEvKey()V
    .locals 0

    return-void
.end method

.method public getCredentialInfo()V
    .locals 0

    return-void
.end method

.method public getEvCredCert()V
    .locals 0

    return-void
.end method

.method public getHsmCredCert()V
    .locals 0

    return-void
.end method

.method public isExistCredential()V
    .locals 0

    return-void
.end method

.method public needSrpVerification()V
    .locals 0

    return-void
.end method

.method public recoverCredential([BLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public recoverCredentialWithTA()V
    .locals 0

    return-void
.end method

.method public registerCallback(Lcom/samsung/android/kmxservice/sdk/escrowvault/IEvServiceCallback;)V
    .locals 0

    return-void
.end method

.method public registerCredential([B[BLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public registerCredentialWithTA()V
    .locals 0

    return-void
.end method

.method public setValueForTest(ZZZ)V
    .locals 0

    return-void
.end method

.method public unRegisterCallback()V
    .locals 0

    return-void
.end method

.method public updateCredentialWithTA()V
    .locals 0

    return-void
.end method

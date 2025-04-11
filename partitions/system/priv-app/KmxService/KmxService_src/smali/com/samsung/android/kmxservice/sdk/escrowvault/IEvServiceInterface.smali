.class public interface abstract Lcom/samsung/android/kmxservice/sdk/escrowvault/IEvServiceInterface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/kmxservice/sdk/escrowvault/IEvServiceInterface$Stub;,
        Lcom/samsung/android/kmxservice/sdk/escrowvault/IEvServiceInterface$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.kmxservice.sdk.escrowvault.IEvServiceInterface"


# virtual methods
.method public abstract canDeleteCredential()V
.end method

.method public abstract deleteCredential([BLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract deleteCredentialWithTA(Z)V
.end method

.method public abstract deleteEscrowInfo()V
.end method

.method public abstract deleteEvKey()V
.end method

.method public abstract getCredentialInfo()V
.end method

.method public abstract getEvCredCert()V
.end method

.method public abstract getHsmCredCert()V
.end method

.method public abstract isExistCredential()V
.end method

.method public abstract needSrpVerification()V
.end method

.method public abstract recoverCredential([BLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract recoverCredentialWithTA()V
.end method

.method public abstract registerCallback(Lcom/samsung/android/kmxservice/sdk/escrowvault/IEvServiceCallback;)V
.end method

.method public abstract registerCredential([B[BLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract registerCredentialWithTA()V
.end method

.method public abstract setValueForTest(ZZZ)V
.end method

.method public abstract unRegisterCallback()V
.end method

.method public abstract updateCredentialWithTA()V
.end method

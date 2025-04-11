.class public interface abstract Lcom/android/server/biometrics/sensors/AuthenticationConsumer;
.super Ljava/lang/Object;
.source "AuthenticationConsumer.java"


# virtual methods
.method public canIgnoreLockout()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V
.end method

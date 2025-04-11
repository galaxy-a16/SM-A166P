.class public Lcom/samsung/android/battauthmanager/BattAuthHelper;
.super Ljava/lang/Object;
.source "BattAuthHelper.java"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "authentication_jni"

    .line 5
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native close_batt_misc()I
.end method

.method public native ioctl_longDataRead_batt()[B
.end method

.method public native ioctl_longDataWrite_batt([B)I
.end method

.method public native makeChallengeReq(II)[B
.end method

.method public native makeGetCertReq(IIIIII)[B
.end method

.method public native makeGetDigestsReq(BI)[B
.end method

.method public native open_batt_misc()I
.end method

.method public native verifyChallengeAuth([B[B[B[B)I
.end method

.method public native verifyWpcCertChain([B)[B
.end method

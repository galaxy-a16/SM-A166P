.class public final Lcom/android/server/devicestate/OverrideRequest;
.super Ljava/lang/Object;
.source "OverrideRequest.java"


# instance fields
.field public mCallStack:Ljava/lang/String;

.field public final mFlags:I

.field public final mPid:I

.field public final mRequestType:I

.field public final mRequestedState:I

.field public final mToken:Landroid/os/IBinder;

.field public final mUid:I


# direct methods
.method public constructor <init>(Landroid/os/IBinder;IIIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/devicestate/OverrideRequest;->mCallStack:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/devicestate/OverrideRequest;->mToken:Landroid/os/IBinder;

    iput p2, p0, Lcom/android/server/devicestate/OverrideRequest;->mPid:I

    iput p3, p0, Lcom/android/server/devicestate/OverrideRequest;->mUid:I

    iput p4, p0, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:I

    iput p5, p0, Lcom/android/server/devicestate/OverrideRequest;->mFlags:I

    iput p6, p0, Lcom/android/server/devicestate/OverrideRequest;->mRequestType:I

    return-void
.end method


# virtual methods
.method public getFlags()I
    .locals 0

    iget p0, p0, Lcom/android/server/devicestate/OverrideRequest;->mFlags:I

    return p0
.end method

.method public getPid()I
    .locals 0

    iget p0, p0, Lcom/android/server/devicestate/OverrideRequest;->mPid:I

    return p0
.end method

.method public getRequestType()I
    .locals 0

    iget p0, p0, Lcom/android/server/devicestate/OverrideRequest;->mRequestType:I

    return p0
.end method

.method public getRequestedState()I
    .locals 0

    iget p0, p0, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:I

    return p0
.end method

.method public getToken()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/android/server/devicestate/OverrideRequest;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public getUid()I
    .locals 0

    iget p0, p0, Lcom/android/server/devicestate/OverrideRequest;->mUid:I

    return p0
.end method

.class public Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;
.super Ljava/lang/Object;
.source "AmbientContextManagerService.java"


# instance fields
.field public final mObserver:Landroid/app/ambientcontext/IAmbientContextObserver;

.field public final mPackageName:Ljava/lang/String;

.field public final mRequest:Landroid/app/ambientcontext/AmbientContextEventRequest;

.field public final mUserId:I


# direct methods
.method public constructor <init>(ILandroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/app/ambientcontext/IAmbientContextObserver;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput p1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mUserId:I

    .line 91
    iput-object p2, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mRequest:Landroid/app/ambientcontext/AmbientContextEventRequest;

    .line 92
    iput-object p3, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mPackageName:Ljava/lang/String;

    .line 93
    iput-object p4, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mObserver:Landroid/app/ambientcontext/IAmbientContextObserver;

    return-void
.end method


# virtual methods
.method public getObserver()Landroid/app/ambientcontext/IAmbientContextObserver;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mObserver:Landroid/app/ambientcontext/IAmbientContextObserver;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getRequest()Landroid/app/ambientcontext/AmbientContextEventRequest;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mRequest:Landroid/app/ambientcontext/AmbientContextEventRequest;

    return-object p0
.end method

.method public hasUserId(I)Z
    .locals 0

    .line 109
    iget p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mUserId:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasUserIdAndPackageName(ILjava/lang/String;)Z
    .locals 1

    .line 113
    iget v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mUserId:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

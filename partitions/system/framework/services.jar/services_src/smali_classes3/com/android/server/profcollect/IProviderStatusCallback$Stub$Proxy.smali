.class public Lcom/android/server/profcollect/IProviderStatusCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IProviderStatusCallback.java"

# interfaces
.implements Lcom/android/server/profcollect/IProviderStatusCallback;


# instance fields
.field public mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/android/server/profcollect/IProviderStatusCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/server/profcollect/IProviderStatusCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

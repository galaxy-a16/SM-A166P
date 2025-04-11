.class public Landroid/gsi/IGsiServiceCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IGsiServiceCallback.java"

# interfaces
.implements Landroid/gsi/IGsiServiceCallback;


# instance fields
.field public mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Landroid/gsi/IGsiServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 86
    iget-object p0, p0, Landroid/gsi/IGsiServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

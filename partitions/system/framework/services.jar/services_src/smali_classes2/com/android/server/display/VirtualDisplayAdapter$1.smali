.class public Lcom/android/server/display/VirtualDisplayAdapter$1;
.super Ljava/lang/Object;
.source "VirtualDisplayAdapter.java"

# interfaces
.implements Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDisplay(Ljava/lang/String;ZF)Landroid/os/IBinder;
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/server/display/DisplayControl;->createDisplay(Ljava/lang/String;ZF)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public destroyDisplay(Landroid/os/IBinder;)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/display/DisplayControl;->destroyDisplay(Landroid/os/IBinder;)V

    return-void
.end method

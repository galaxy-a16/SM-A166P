.class public final Lcom/android/server/companion/virtual/InputController$BinderDeathRecipient;
.super Ljava/lang/Object;
.source "InputController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mDeviceToken:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/companion/virtual/InputController;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/virtual/InputController;Landroid/os/IBinder;)V
    .locals 0

    .line 676
    iput-object p1, p0, Lcom/android/server/companion/virtual/InputController$BinderDeathRecipient;->this$0:Lcom/android/server/companion/virtual/InputController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 677
    iput-object p2, p0, Lcom/android/server/companion/virtual/InputController$BinderDeathRecipient;->mDeviceToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const-string v0, "VirtualInputController"

    const-string v1, "Virtual input controller binder died"

    .line 685
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController$BinderDeathRecipient;->this$0:Lcom/android/server/companion/virtual/InputController;

    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController$BinderDeathRecipient;->mDeviceToken:Landroid/os/IBinder;

    invoke-virtual {v0, p0}, Lcom/android/server/companion/virtual/InputController;->unregisterInputDevice(Landroid/os/IBinder;)V

    return-void
.end method

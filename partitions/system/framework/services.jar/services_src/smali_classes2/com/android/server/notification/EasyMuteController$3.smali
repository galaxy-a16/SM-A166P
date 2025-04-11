.class public Lcom/android/server/notification/EasyMuteController$3;
.super Ljava/lang/Object;
.source "EasyMuteController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/EasyMuteController;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/EasyMuteController;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/android/server/notification/EasyMuteController$3;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const-string v0, "EasyMuteController"

    const-string v1, "binderDied()"

    .line 159
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController$3;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-static {v0}, Lcom/android/server/notification/EasyMuteController;->-$$Nest$fgetmNotificationPlayerBinder(Lcom/android/server/notification/EasyMuteController;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 161
    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController$3;->this$0:Lcom/android/server/notification/EasyMuteController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/notification/EasyMuteController;->-$$Nest$fputmNotificationPlayerBinder(Lcom/android/server/notification/EasyMuteController;Landroid/os/IBinder;)V

    .line 162
    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController$3;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-static {v0}, Lcom/android/server/notification/EasyMuteController;->-$$Nest$fgetmIsRegister(Lcom/android/server/notification/EasyMuteController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object p0, p0, Lcom/android/server/notification/EasyMuteController$3;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-virtual {p0}, Lcom/android/server/notification/EasyMuteController;->unregisterListener()V

    :cond_0
    return-void
.end method

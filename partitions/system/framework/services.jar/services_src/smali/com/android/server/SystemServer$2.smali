.class public Lcom/android/server/SystemServer$2;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/SystemServer;

.field public final synthetic val$reason:Ljava/lang/String;

.field public final synthetic val$reboot:Z


# direct methods
.method public constructor <init>(Lcom/android/server/SystemServer;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    iput-boolean p2, p0, Lcom/android/server/SystemServer$2;->val$reboot:Z

    iput-object p3, p0, Lcom/android/server/SystemServer$2;->val$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/SystemServer$2;->val$reboot:Z

    iget-object p0, p0, Lcom/android/server/SystemServer$2;->val$reason:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1, v0, p0}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    return-void
.end method

.class public Lcom/android/server/power/ShutdownThread$2;
.super Landroid/content/BroadcastReceiver;
.source "ShutdownThread.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ShutdownThread;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ShutdownThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$2;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/ShutdownThread$2;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread;->actionDone()V

    return-void
.end method

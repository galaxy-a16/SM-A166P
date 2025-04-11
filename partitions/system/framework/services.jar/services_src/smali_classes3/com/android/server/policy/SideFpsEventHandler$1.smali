.class public Lcom/android/server/policy/SideFpsEventHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "SideFpsEventHandler.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/SideFpsEventHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/SideFpsEventHandler;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler$1;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler$1;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    invoke-static {p0}, Lcom/android/server/policy/SideFpsEventHandler;->-$$Nest$fgetmDialog(Lcom/android/server/policy/SideFpsEventHandler;)Lcom/android/server/policy/SideFpsToast;

    return-void
.end method

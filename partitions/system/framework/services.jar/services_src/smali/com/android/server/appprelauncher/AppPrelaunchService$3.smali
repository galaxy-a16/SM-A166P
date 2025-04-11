.class public Lcom/android/server/appprelauncher/AppPrelaunchService$3;
.super Landroid/content/BroadcastReceiver;
.source "AppPrelaunchService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;


# direct methods
.method public constructor <init>(Lcom/android/server/appprelauncher/AppPrelaunchService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$3;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$3;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-static {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->-$$Nest$fgetmScpmController(Lcom/android/server/appprelauncher/AppPrelaunchService;)Lcom/android/server/appprelauncher/ScpmController;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$3;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-static {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->-$$Nest$fgetmScpmController(Lcom/android/server/appprelauncher/AppPrelaunchService;)Lcom/android/server/appprelauncher/ScpmController;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$3;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-static {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService;->-$$Nest$fgetmContext(Lcom/android/server/appprelauncher/AppPrelaunchService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/appprelauncher/ScpmController;->registerScpm(Landroid/content/Context;)Z

    :cond_0
    return-void
.end method

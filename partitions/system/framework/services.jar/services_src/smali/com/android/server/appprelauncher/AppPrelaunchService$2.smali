.class public Lcom/android/server/appprelauncher/AppPrelaunchService$2;
.super Landroid/content/BroadcastReceiver;
.source "AppPrelaunchService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;


# direct methods
.method public constructor <init>(Lcom/android/server/appprelauncher/AppPrelaunchService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$2;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$2;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-static {p0, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService;->-$$Nest$mperformInstallActionBroadcast(Lcom/android/server/appprelauncher/AppPrelaunchService;Landroid/content/Intent;)V

    return-void
.end method

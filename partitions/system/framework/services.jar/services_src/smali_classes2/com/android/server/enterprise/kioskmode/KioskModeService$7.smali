.class public Lcom/android/server/enterprise/kioskmode/KioskModeService$7;
.super Landroid/content/BroadcastReceiver;
.source "KioskModeService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V
    .locals 0

    .line 1022
    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$7;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "android.intent.extra.user_handle"

    const/4 v0, 0x0

    .line 1025
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1026
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$7;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-static {p0, v0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->-$$Nest$mapplyMultiWindowPolicy(Lcom/android/server/enterprise/kioskmode/KioskModeService;ZI)Z

    return-void
.end method

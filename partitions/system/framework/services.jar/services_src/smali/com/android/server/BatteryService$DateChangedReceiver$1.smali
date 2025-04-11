.class public Lcom/android/server/BatteryService$DateChangedReceiver$1;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/BatteryService$DateChangedReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService$DateChangedReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/BatteryService$DateChangedReceiver$1;->this$1:Lcom/android/server/BatteryService$DateChangedReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/BatteryService$DateChangedReceiver$1;->this$1:Lcom/android/server/BatteryService$DateChangedReceiver;

    iget-object p0, p0, Lcom/android/server/BatteryService$DateChangedReceiver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$mcheckFaiExpired(Lcom/android/server/BatteryService;)V

    return-void
.end method

.class public Lcom/android/server/BatteryService$TimeChangedReceiver$1;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/BatteryService$TimeChangedReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService$TimeChangedReceiver;)V
    .locals 0

    .line 1955
    iput-object p1, p0, Lcom/android/server/BatteryService$TimeChangedReceiver$1;->this$1:Lcom/android/server/BatteryService$TimeChangedReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1958
    iget-object p0, p0, Lcom/android/server/BatteryService$TimeChangedReceiver$1;->this$1:Lcom/android/server/BatteryService$TimeChangedReceiver;

    iget-object p0, p0, Lcom/android/server/BatteryService$TimeChangedReceiver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$mupdateBatteryDate(Lcom/android/server/BatteryService;)V

    return-void
.end method

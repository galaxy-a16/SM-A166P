.class public final synthetic Lcom/android/server/BatteryService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/health/HealthInfoCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/BatteryService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/BatteryService;

    return-void
.end method


# virtual methods
.method public final update(Lvendor/samsung/hardware/health/SehHealthInfo;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/BatteryService;

    invoke-static {p0, p1}, Lcom/android/server/BatteryService;->$r8$lambda$yxcncUjFj-WdcPjuCc8TrVl5ioY(Lcom/android/server/BatteryService;Lvendor/samsung/hardware/health/SehHealthInfo;)V

    return-void
.end method

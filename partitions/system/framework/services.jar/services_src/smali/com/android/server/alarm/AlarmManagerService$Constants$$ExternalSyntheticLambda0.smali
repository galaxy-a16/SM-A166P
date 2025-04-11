.class public final synthetic Lcom/android/server/alarm/AlarmManagerService$Constants$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;


# instance fields
.field public final synthetic f$0:Lcom/android/server/alarm/AlarmManagerService$Constants;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/alarm/AlarmManagerService$Constants;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/alarm/AlarmManagerService$Constants;

    return-void
.end method


# virtual methods
.method public final updateAlarmDelivery(Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/alarm/AlarmManagerService$Constants;

    invoke-static {p0, p1}, Lcom/android/server/alarm/AlarmManagerService$Constants;->$r8$lambda$qIVARw8RFNj6PEriiLP8WLs9Lj0(Lcom/android/server/alarm/AlarmManagerService$Constants;Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

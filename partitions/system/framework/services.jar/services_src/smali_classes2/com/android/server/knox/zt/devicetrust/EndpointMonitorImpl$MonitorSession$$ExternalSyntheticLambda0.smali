.class public final synthetic Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    check-cast p1, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    invoke-static {p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitorSession;->$r8$lambda$Eje67zAi1BIi2isim37pA87VnKA(Lcom/android/server/knox/zt/devicetrust/data/EndpointData;)Z

    move-result p0

    return p0
.end method

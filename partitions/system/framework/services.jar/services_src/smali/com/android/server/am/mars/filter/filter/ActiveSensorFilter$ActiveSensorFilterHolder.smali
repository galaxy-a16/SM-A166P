.class public abstract Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter$ActiveSensorFilterHolder;
.super Ljava/lang/Object;
.source "ActiveSensorFilter.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter$ActiveSensorFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter;-><init>(Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter-IA;)V

    sput-object v0, Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter$ActiveSensorFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter;

    return-void
.end method

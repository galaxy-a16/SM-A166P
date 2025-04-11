.class public abstract Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter$BlueToothConnectedFilterHolder;
.super Ljava/lang/Object;
.source "BlueToothConnectedFilter.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;
    .locals 1

    sget-object v0, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter$BlueToothConnectedFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;-><init>(Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter-IA;)V

    sput-object v0, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter$BlueToothConnectedFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;

    return-void
.end method

.class public abstract Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter$ActiveTrafficFilterHolder;
.super Ljava/lang/Object;
.source "ActiveTrafficFilter.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter;
    .locals 1

    sget-object v0, Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter$ActiveTrafficFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter;-><init>(Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter-IA;)V

    sput-object v0, Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter$ActiveTrafficFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter;

    return-void
.end method

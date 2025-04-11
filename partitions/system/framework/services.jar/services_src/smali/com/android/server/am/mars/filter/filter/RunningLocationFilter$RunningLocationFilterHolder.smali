.class public abstract Lcom/android/server/am/mars/filter/filter/RunningLocationFilter$RunningLocationFilterHolder;
.super Ljava/lang/Object;
.source "RunningLocationFilter.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/RunningLocationFilter;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/RunningLocationFilter;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/am/mars/filter/filter/RunningLocationFilter$RunningLocationFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/RunningLocationFilter;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/android/server/am/mars/filter/filter/RunningLocationFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/filter/filter/RunningLocationFilter;-><init>(Lcom/android/server/am/mars/filter/filter/RunningLocationFilter-IA;)V

    sput-object v0, Lcom/android/server/am/mars/filter/filter/RunningLocationFilter$RunningLocationFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/RunningLocationFilter;

    return-void
.end method

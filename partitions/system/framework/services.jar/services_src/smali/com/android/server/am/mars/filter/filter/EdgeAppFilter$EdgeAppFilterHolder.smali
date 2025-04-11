.class public abstract Lcom/android/server/am/mars/filter/filter/EdgeAppFilter$EdgeAppFilterHolder;
.super Ljava/lang/Object;
.source "EdgeAppFilter.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;
    .locals 1

    sget-object v0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter$EdgeAppFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;-><init>(Lcom/android/server/am/mars/filter/filter/EdgeAppFilter-IA;)V

    sput-object v0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter$EdgeAppFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;

    return-void
.end method

.class public abstract Lcom/android/server/am/mars/filter/filter/TopPackageFilter$TopPackageFilterHolder;
.super Ljava/lang/Object;
.source "TopPackageFilter.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/TopPackageFilter;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/TopPackageFilter;
    .locals 1

    sget-object v0, Lcom/android/server/am/mars/filter/filter/TopPackageFilter$TopPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/TopPackageFilter;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;-><init>(Lcom/android/server/am/mars/filter/filter/TopPackageFilter-IA;)V

    sput-object v0, Lcom/android/server/am/mars/filter/filter/TopPackageFilter$TopPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/TopPackageFilter;

    return-void
.end method

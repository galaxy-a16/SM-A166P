.class public abstract Lcom/android/server/am/mars/filter/filter/VPNPackageFilter$VPNPackageFilterHolder;
.super Ljava/lang/Object;
.source "VPNPackageFilter.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;
    .locals 1

    sget-object v0, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter$VPNPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;-><init>(Lcom/android/server/am/mars/filter/filter/VPNPackageFilter-IA;)V

    sput-object v0, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter$VPNPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;

    return-void
.end method

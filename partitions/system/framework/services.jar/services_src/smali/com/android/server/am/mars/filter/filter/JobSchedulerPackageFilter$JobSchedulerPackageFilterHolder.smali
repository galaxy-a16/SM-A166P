.class public abstract Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter$JobSchedulerPackageFilterHolder;
.super Ljava/lang/Object;
.source "JobSchedulerPackageFilter.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter$JobSchedulerPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter;-><init>(Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter-IA;)V

    sput-object v0, Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter$JobSchedulerPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter;

    return-void
.end method

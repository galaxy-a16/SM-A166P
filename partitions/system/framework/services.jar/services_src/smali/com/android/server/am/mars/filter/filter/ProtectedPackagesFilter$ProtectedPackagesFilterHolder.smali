.class public abstract Lcom/android/server/am/mars/filter/filter/ProtectedPackagesFilter$ProtectedPackagesFilterHolder;
.super Ljava/lang/Object;
.source "ProtectedPackagesFilter.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/ProtectedPackagesFilter;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/ProtectedPackagesFilter;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/am/mars/filter/filter/ProtectedPackagesFilter$ProtectedPackagesFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ProtectedPackagesFilter;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/android/server/am/mars/filter/filter/ProtectedPackagesFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/filter/filter/ProtectedPackagesFilter;-><init>(Lcom/android/server/am/mars/filter/filter/ProtectedPackagesFilter-IA;)V

    sput-object v0, Lcom/android/server/am/mars/filter/filter/ProtectedPackagesFilter$ProtectedPackagesFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ProtectedPackagesFilter;

    return-void
.end method

.class public abstract Lcom/android/server/am/mars/filter/filter/AllowListFilter$AllowListFilterHolder;
.super Ljava/lang/Object;
.source "AllowListFilter.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/AllowListFilter;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/AllowListFilter;
    .locals 1

    sget-object v0, Lcom/android/server/am/mars/filter/filter/AllowListFilter$AllowListFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/AllowListFilter;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/filter/filter/AllowListFilter;-><init>(Lcom/android/server/am/mars/filter/filter/AllowListFilter-IA;)V

    sput-object v0, Lcom/android/server/am/mars/filter/filter/AllowListFilter$AllowListFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/AllowListFilter;

    return-void
.end method

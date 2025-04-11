.class public abstract Lcom/android/server/am/mars/filter/filter/SystemFilter$SystemFilterHolder;
.super Ljava/lang/Object;
.source "SystemFilter.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/SystemFilter;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/SystemFilter;
    .locals 1

    sget-object v0, Lcom/android/server/am/mars/filter/filter/SystemFilter$SystemFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/SystemFilter;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/am/mars/filter/filter/SystemFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/filter/filter/SystemFilter;-><init>(Lcom/android/server/am/mars/filter/filter/SystemFilter-IA;)V

    sput-object v0, Lcom/android/server/am/mars/filter/filter/SystemFilter$SystemFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/SystemFilter;

    return-void
.end method

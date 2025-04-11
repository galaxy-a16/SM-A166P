.class public abstract Lcom/android/server/am/mars/filter/filter/NoAppIconFilter$NoAppIconFilterHolder;
.super Ljava/lang/Object;
.source "NoAppIconFilter.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/NoAppIconFilter;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/NoAppIconFilter;
    .locals 1

    sget-object v0, Lcom/android/server/am/mars/filter/filter/NoAppIconFilter$NoAppIconFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/NoAppIconFilter;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/am/mars/filter/filter/NoAppIconFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/filter/filter/NoAppIconFilter;-><init>(Lcom/android/server/am/mars/filter/filter/NoAppIconFilter-IA;)V

    sput-object v0, Lcom/android/server/am/mars/filter/filter/NoAppIconFilter$NoAppIconFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/NoAppIconFilter;

    return-void
.end method

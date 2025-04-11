.class public abstract Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadFilterHolder;
.super Ljava/lang/Object;
.source "PredownloadFilter.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/PredownloadFilter;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/PredownloadFilter;
    .locals 1

    sget-object v0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/PredownloadFilter;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;-><init>(Lcom/android/server/am/mars/filter/filter/PredownloadFilter-IA;)V

    sput-object v0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/PredownloadFilter;

    return-void
.end method

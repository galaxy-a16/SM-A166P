.class public abstract Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;
.super Ljava/lang/Object;
.source "FilterManager.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/FilterManager;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/android/server/am/mars/filter/FilterManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/filter/FilterManager;-><init>(Lcom/android/server/am/mars/filter/FilterManager-IA;)V

    sput-object v0, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    return-void
.end method

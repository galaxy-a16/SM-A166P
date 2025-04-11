.class public abstract Lcom/android/server/am/mars/filter/filter/WallPaperFilter$WallPaperFilterHolder;
.super Ljava/lang/Object;
.source "WallPaperFilter.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/WallPaperFilter;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/WallPaperFilter;
    .locals 1

    sget-object v0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter$WallPaperFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/WallPaperFilter;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;-><init>(Lcom/android/server/am/mars/filter/filter/WallPaperFilter-IA;)V

    sput-object v0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter$WallPaperFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/WallPaperFilter;

    return-void
.end method

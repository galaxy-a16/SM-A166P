.class public abstract Lcom/android/server/am/mars/database/MARsComponentTracker$MARsComponentTrackerHolder;
.super Ljava/lang/Object;
.source "MARsComponentTracker.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/database/MARsComponentTracker;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/database/MARsComponentTracker;
    .locals 1

    sget-object v0, Lcom/android/server/am/mars/database/MARsComponentTracker$MARsComponentTrackerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsComponentTracker;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/am/mars/database/MARsComponentTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/database/MARsComponentTracker;-><init>(Lcom/android/server/am/mars/database/MARsComponentTracker-IA;)V

    sput-object v0, Lcom/android/server/am/mars/database/MARsComponentTracker$MARsComponentTrackerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsComponentTracker;

    return-void
.end method

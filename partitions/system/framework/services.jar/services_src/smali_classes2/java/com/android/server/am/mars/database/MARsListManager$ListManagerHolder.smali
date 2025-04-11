.class public abstract Ljava/com/android/server/am/mars/database/MARsListManager$ListManagerHolder;
.super Ljava/lang/Object;
.source "MARsListManager.java"


# static fields
.field public static final INSTANCE:Ljava/com/android/server/am/mars/database/MARsListManager;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Ljava/com/android/server/am/mars/database/MARsListManager;
    .locals 1

    .line 0
    sget-object v0, Ljava/com/android/server/am/mars/database/MARsListManager$ListManagerHolder;->INSTANCE:Ljava/com/android/server/am/mars/database/MARsListManager;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 53
    new-instance v0, Ljava/com/android/server/am/mars/database/MARsListManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/com/android/server/am/mars/database/MARsListManager;-><init>(Ljava/com/android/server/am/mars/database/MARsListManager-IA;)V

    sput-object v0, Ljava/com/android/server/am/mars/database/MARsListManager$ListManagerHolder;->INSTANCE:Ljava/com/android/server/am/mars/database/MARsListManager;

    return-void
.end method

.class public abstract Lcom/android/server/am/mars/MARsHistoryBuffer$MARsHistoryBufferHolder;
.super Ljava/lang/Object;
.source "MARsHistoryBuffer.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/MARsHistoryBuffer;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/MARsHistoryBuffer;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/am/mars/MARsHistoryBuffer$MARsHistoryBufferHolder;->INSTANCE:Lcom/android/server/am/mars/MARsHistoryBuffer;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lcom/android/server/am/mars/MARsHistoryBuffer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/MARsHistoryBuffer;-><init>(Lcom/android/server/am/mars/MARsHistoryBuffer-IA;)V

    sput-object v0, Lcom/android/server/am/mars/MARsHistoryBuffer$MARsHistoryBufferHolder;->INSTANCE:Lcom/android/server/am/mars/MARsHistoryBuffer;

    return-void
.end method

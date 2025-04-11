.class public abstract Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$ActiveMusicRecordFilterHolder;
.super Ljava/lang/Object;
.source "ActiveMusicRecordFilter.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$ActiveMusicRecordFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;-><init>(Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter-IA;)V

    sput-object v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$ActiveMusicRecordFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    return-void
.end method

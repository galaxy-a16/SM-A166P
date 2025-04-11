.class public Lcom/samsung/android/kmxservice/common/analytics/SALog;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private customDimen:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private detail:Ljava/lang/String;

.field private eventId:Ljava/lang/String;

.field private isBackground:Z

.field private screenID:Ljava/lang/String;

.field private value:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/common/analytics/SALog;->eventId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/kmxservice/common/analytics/SALog;->detail:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/kmxservice/common/analytics/SALog;->value:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/kmxservice/common/analytics/SALog;->isBackground:Z

    iput-object v0, p0, Lcom/samsung/android/kmxservice/common/analytics/SALog;->customDimen:Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/kmxservice/common/analytics/SALog;->screenID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/common/analytics/SALog;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/kmxservice/common/analytics/SALog;->eventId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/common/analytics/SALog;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide p3, p0, Lcom/samsung/android/kmxservice/common/analytics/SALog;->value:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/common/analytics/SALog;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/samsung/android/kmxservice/common/analytics/SALog;->detail:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/kmxservice/common/analytics/SALog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-wide p4, p0, Lcom/samsung/android/kmxservice/common/analytics/SALog;->value:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/common/analytics/SALog;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/common/analytics/SALog;->customDimen:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/kmxservice/common/analytics/SALog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iput-boolean p4, p0, Lcom/samsung/android/kmxservice/common/analytics/SALog;->isBackground:Z

    return-void
.end method


# virtual methods
.method public getCustomDimen()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/analytics/SALog;->customDimen:Ljava/util/Map;

    return-object p0
.end method

.method public getDetail()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/analytics/SALog;->detail:Ljava/lang/String;

    return-object p0
.end method

.method public getEventId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/analytics/SALog;->eventId:Ljava/lang/String;

    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/analytics/SALog;->screenID:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/kmxservice/common/analytics/SALog;->value:J

    return-wide v0
.end method

.method public isBackground()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/kmxservice/common/analytics/SALog;->isBackground:Z

    return p0
.end method

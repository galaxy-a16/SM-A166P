.class public final Lcom/samsung/context/sdk/samsunganalytics/internal/sender/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:Ljava/lang/String;

.field public d:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;)V
    .locals 6

    .line 1
    const-string v1, ""

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/b;-><init>(Ljava/lang/String;JLjava/lang/String;Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/b;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/b;->b:J

    iput-object p4, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/b;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/b;->d:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    return-void
.end method

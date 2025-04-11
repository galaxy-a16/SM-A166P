.class public Lcom/android/server/pm/dex/ArtStatsLogUtils$ArtStatsLogger;
.super Ljava/lang/Object;
.source "ArtStatsLogUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(JIILjava/lang/String;IJIILjava/lang/String;)V
    .locals 17

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move/from16 v9, p6

    move-wide/from16 v10, p7

    move/from16 v12, p9

    move/from16 v13, p10

    const/16 v0, 0x14c

    .line 286
    invoke-static {}, Lcom/android/server/pm/dex/ArtStatsLogUtils;->-$$Nest$sfgetCOMPILE_FILTER_MAP()Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x2

    .line 290
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v6, p5

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {}, Lcom/android/server/pm/dex/ArtStatsLogUtils;->-$$Nest$sfgetCOMPILATION_REASON_MAP()Ljava/util/Map;

    move-result-object v6

    .line 292
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 294
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-static {}, Lcom/android/server/pm/dex/ArtStatsLogUtils;->-$$Nest$sfgetISA_MAP()Ljava/util/Map;

    move-result-object v14

    const/4 v15, 0x0

    .line 301
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p11

    .line 300
    invoke-interface {v14, v0, v15}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v0, 0x14c

    .line 286
    invoke-static/range {v0 .. v16}, Lcom/android/internal/art/ArtStatsLog;->write(IJIIIJIIJIIIII)V

    return-void
.end method

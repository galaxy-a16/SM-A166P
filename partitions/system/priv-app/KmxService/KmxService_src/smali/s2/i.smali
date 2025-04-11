.class public final Ls2/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lp2/f;

.field public final c:Lt2/d;

.field public final d:Ls2/l;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Lu2/b;

.field public final g:Lv2/a;

.field public final h:Lv2/a;

.field public final i:Lt2/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lp2/f;Lt2/d;Ls2/l;Ljava/util/concurrent/Executor;Lu2/b;Lv2/a;Lv2/a;Lt2/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls2/i;->a:Landroid/content/Context;

    iput-object p2, p0, Ls2/i;->b:Lp2/f;

    iput-object p3, p0, Ls2/i;->c:Lt2/d;

    iput-object p4, p0, Ls2/i;->d:Ls2/l;

    iput-object p5, p0, Ls2/i;->e:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Ls2/i;->f:Lu2/b;

    iput-object p7, p0, Ls2/i;->g:Lv2/a;

    iput-object p8, p0, Ls2/i;->h:Lv2/a;

    iput-object p9, p0, Ls2/i;->i:Lt2/c;

    return-void
.end method


# virtual methods
.method public final a(Lo2/j;I)V
    .locals 32

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v0, v8, Lo2/j;->a:Ljava/lang/String;

    iget-object v1, v7, Ls2/i;->b:Lp2/f;

    invoke-virtual {v1, v0}, Lp2/f;->a(Ljava/lang/String;)Lp2/h;

    move-result-object v1

    sget-object v0, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->OK:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    if-eqz v0, :cond_26

    const-wide/16 v2, 0x0

    move-wide v5, v2

    :goto_0
    new-instance v0, Ls2/f;

    const/4 v2, 0x0

    invoke-direct {v0, v7, v8, v2}, Ls2/f;-><init>(Ls2/i;Lo2/j;I)V

    iget-object v3, v7, Ls2/i;->f:Lu2/b;

    move-object v9, v3

    check-cast v9, Lt2/k;

    invoke-virtual {v9, v0}, Lt2/k;->x(Lu2/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v3, v7, Ls2/i;->g:Lv2/a;

    const/4 v4, 0x6

    if-eqz v0, :cond_25

    new-instance v0, Ls2/f;

    const/4 v10, 0x1

    invoke-direct {v0, v7, v8, v10}, Ls2/f;-><init>(Ls2/i;Lo2/j;I)V

    invoke-virtual {v9, v0}, Lt2/k;->x(Lu2/a;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/Iterable;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v12, -0x1

    iget-object v14, v8, Lo2/j;->b:[B

    if-nez v1, :cond_1

    const-string v0, "Uploader"

    const-string v3, "Unknown backend for %s, deleting event batch for it..."

    invoke-static {v8, v0, v3}, Lcom/fasterxml/jackson/annotation/i0;->n(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lp2/a;

    sget-object v3, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->FATAL_ERROR:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    invoke-direct {v0, v3, v12, v13}, Lp2/a;-><init>(Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;J)V

    move-object/from16 v16, v1

    move-object v10, v9

    goto/16 :goto_f

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lt2/b;

    iget-object v13, v13, Lt2/b;->c:Lo2/h;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-eqz v14, :cond_3

    move v2, v10

    :cond_3
    const-string v10, "proto"

    if-eqz v2, :cond_4

    iget-object v2, v7, Ls2/i;->i:Lt2/c;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v12, La5/a;

    invoke-direct {v12, v2, v4}, La5/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v9, v12}, Lt2/k;->x(Lu2/a;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq2/a;

    new-instance v4, Lva/m;

    invoke-direct {v4}, Lva/m;-><init>()V

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    iput-object v12, v4, Lva/m;->f:Ljava/lang/Object;

    check-cast v3, Lv2/b;

    invoke-virtual {v3}, Lv2/b;->a()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v4, Lva/m;->d:Ljava/lang/Object;

    iget-object v3, v7, Ls2/i;->h:Lv2/a;

    check-cast v3, Lv2/b;

    invoke-virtual {v3}, Lv2/b;->a()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v4, Lva/m;->e:Ljava/lang/Object;

    const-string v3, "GDT_CLIENT_METRICS"

    invoke-virtual {v4, v3}, Lva/m;->l(Ljava/lang/String;)V

    new-instance v3, Lo2/m;

    new-instance v12, Ll2/c;

    invoke-direct {v12, v10}, Ll2/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Lo2/n;->a:Lp1/v;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-virtual {v13, v15, v2}, Lp1/v;->h(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v3, v12, v2}, Lo2/m;-><init>(Ll2/c;[B)V

    invoke-virtual {v4, v3}, Lva/m;->k(Lo2/m;)V

    invoke-virtual {v4}, Lva/m;->b()Lo2/h;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lm2/d;

    invoke-virtual {v3, v2}, Lm2/d;->a(Lo2/h;)Lo2/h;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object v2, v1

    check-cast v2, Lm2/d;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo2/h;

    iget-object v12, v4, Lo2/h;->a:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    invoke-virtual {v3, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v12, "CctTransportBackend"

    if-eqz v4, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lo2/h;

    new-instance v15, Ln2/l;

    invoke-direct {v15}, Ln2/l;-><init>()V

    move-object/from16 v16, v1

    sget-object v1, Lcom/google/android/datatransport/cct/internal/QosTier;->DEFAULT:Lcom/google/android/datatransport/cct/internal/QosTier;

    iput-object v1, v15, Ln2/l;->g:Ljava/lang/Object;

    iget-object v1, v2, Lm2/d;->f:Lv2/a;

    check-cast v1, Lv2/b;

    invoke-virtual {v1}, Lv2/b;->a()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v15, Ln2/l;->a:Ljava/lang/Object;

    iget-object v1, v2, Lm2/d;->e:Lv2/a;

    check-cast v1, Lv2/b;

    invoke-virtual {v1}, Lv2/b;->a()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v15, Ln2/l;->b:Ljava/lang/Object;

    new-instance v1, Lp1/e;

    move-object/from16 v17, v3

    const/4 v3, 0x5

    invoke-direct {v1, v3}, Lp1/e;-><init>(I)V

    sget-object v3, Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;->ANDROID_FIREBASE:Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

    iput-object v3, v1, Lp1/e;->b:Ljava/lang/Object;

    const-string v3, "sdk-version"

    invoke-virtual {v13, v3}, Lo2/h;->b(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const-string v3, "model"

    invoke-virtual {v13, v3}, Lo2/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v3, "hardware"

    invoke-virtual {v13, v3}, Lo2/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v3, "device"

    invoke-virtual {v13, v3}, Lo2/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v3, "product"

    invoke-virtual {v13, v3}, Lo2/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v3, "os-uild"

    invoke-virtual {v13, v3}, Lo2/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v3, "manufacturer"

    invoke-virtual {v13, v3}, Lo2/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v3, "fingerprint"

    invoke-virtual {v13, v3}, Lo2/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v3, "country"

    invoke-virtual {v13, v3}, Lo2/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v3, "locale"

    invoke-virtual {v13, v3}, Lo2/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const-string v3, "mcc_mnc"

    invoke-virtual {v13, v3}, Lo2/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v3, "application_build"

    invoke-virtual {v13, v3}, Lo2/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    new-instance v3, Ln2/i;

    move-object/from16 v18, v3

    invoke-direct/range {v18 .. v30}, Ln2/i;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v1, Lp1/e;->c:Ljava/lang/Object;

    new-instance v13, Ln2/k;

    iget-object v1, v1, Lp1/e;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

    invoke-direct {v13, v1, v3}, Ln2/k;-><init>(Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;Ln2/a;)V

    iput-object v13, v15, Ln2/l;->e:Ljava/lang/Object;

    :try_start_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v15, Ln2/l;->c:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v15, Ln2/l;->d:Ljava/lang/Object;

    :goto_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v13, "Missing required properties:"

    const-string v18, ""

    if-eqz v4, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo2/h;

    move-object/from16 v19, v3

    iget-object v3, v4, Lo2/h;->c:Lo2/m;

    iget-object v8, v3, Lo2/m;->a:Ll2/c;

    new-instance v7, Ll2/c;

    invoke-direct {v7, v10}, Ll2/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ll2/c;->equals(Ljava/lang/Object;)Z

    move-result v7

    iget-object v3, v3, Lo2/m;->b:[B

    if-eqz v7, :cond_7

    new-instance v7, Ln2/l;

    invoke-direct {v7}, Ln2/l;-><init>()V

    iput-object v3, v7, Ln2/l;->f:Ljava/lang/Object;

    move-object/from16 v20, v10

    :goto_6
    move-object v10, v9

    goto :goto_7

    :cond_7
    new-instance v7, Ll2/c;

    move-object/from16 v20, v10

    const-string v10, "json"

    invoke-direct {v7, v10}, Ll2/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ll2/c;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    new-instance v7, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-direct {v7, v3, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v3, Ln2/l;

    invoke-direct {v3}, Ln2/l;-><init>()V

    iput-object v7, v3, Ln2/l;->d:Ljava/lang/Object;

    move-object v7, v3

    goto :goto_6

    :goto_7
    iget-wide v8, v4, Lo2/h;->d:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v7, Ln2/l;->a:Ljava/lang/Object;

    iget-wide v8, v4, Lo2/h;->e:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v7, Ln2/l;->b:Ljava/lang/Object;

    iget-object v3, v4, Lo2/h;->f:Ljava/util/Map;

    const-string v8, "tz-offset"

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_8

    const-wide/16 v8, 0x0

    goto :goto_8

    :cond_8
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    :goto_8
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v7, Ln2/l;->e:Ljava/lang/Object;

    new-instance v3, Lp1/l;

    const/4 v8, 0x5

    invoke-direct {v3, v8}, Lp1/l;-><init>(I)V

    const-string v8, "net-type"

    invoke-virtual {v4, v8}, Lo2/h;->b(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->forNumber(I)Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    move-result-object v8

    iput-object v8, v3, Lp1/l;->b:Ljava/lang/Object;

    const-string v8, "mobile-subtype"

    invoke-virtual {v4, v8}, Lo2/h;->b(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;->forNumber(I)Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    move-result-object v8

    iput-object v8, v3, Lp1/l;->c:Ljava/lang/Object;

    new-instance v9, Ln2/p;

    iget-object v3, v3, Lp1/l;->b:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    invoke-direct {v9, v3, v8}, Ln2/p;-><init>(Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;)V

    iput-object v9, v7, Ln2/l;->g:Ljava/lang/Object;

    iget-object v3, v4, Lo2/h;->b:Ljava/lang/Integer;

    if-eqz v3, :cond_9

    iput-object v3, v7, Ln2/l;->c:Ljava/lang/Object;

    :cond_9
    iget-object v3, v7, Ln2/l;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    if-nez v3, :cond_a

    const-string v18, " eventTimeMs"

    :cond_a
    move-object/from16 v3, v18

    iget-object v4, v7, Ln2/l;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_b

    const-string v4, " eventUptimeMs"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_b
    iget-object v4, v7, Ln2/l;->e:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_c

    const-string v4, " timezoneOffsetSeconds"

    invoke-static {v3, v4}, Landroidx/activity/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_c
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    new-instance v3, Ln2/m;

    iget-object v4, v7, Ln2/l;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    iget-object v4, v7, Ln2/l;->c:Ljava/lang/Object;

    move-object/from16 v24, v4

    check-cast v24, Ljava/lang/Integer;

    iget-object v4, v7, Ln2/l;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    iget-object v4, v7, Ln2/l;->f:Ljava/lang/Object;

    move-object/from16 v27, v4

    check-cast v27, [B

    iget-object v4, v7, Ln2/l;->d:Ljava/lang/Object;

    move-object/from16 v28, v4

    check-cast v28, Ljava/lang/String;

    iget-object v4, v7, Ln2/l;->e:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v29

    iget-object v4, v7, Ln2/l;->g:Ljava/lang/Object;

    move-object/from16 v31, v4

    check-cast v31, Ln2/u;

    move-object/from16 v21, v3

    invoke-direct/range {v21 .. v31}, Ln2/m;-><init>(JLjava/lang/Integer;J[BLjava/lang/String;JLn2/u;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v13, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    move-object v10, v9

    invoke-static {v12}, Lcom/fasterxml/jackson/annotation/i0;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v8, v4, v7

    const-string v7, "Received event of unsupported encoding %s. Skipping..."

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_9
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object v9, v10

    move-object/from16 v3, v19

    move-object/from16 v10, v20

    goto/16 :goto_5

    :cond_10
    move-object/from16 v20, v10

    move-object v10, v9

    iput-object v1, v15, Ln2/l;->f:Ljava/lang/Object;

    iget-object v1, v15, Ln2/l;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_11

    const-string v18, " requestTimeMs"

    :cond_11
    move-object/from16 v1, v18

    iget-object v3, v15, Ln2/l;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    if-nez v3, :cond_12

    const-string v3, " requestUptimeMs"

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_12
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_13

    new-instance v1, Ln2/n;

    iget-object v3, v15, Ln2/l;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    iget-object v3, v15, Ln2/l;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    iget-object v3, v15, Ln2/l;->e:Ljava/lang/Object;

    move-object/from16 v26, v3

    check-cast v26, Ln2/r;

    iget-object v3, v15, Ln2/l;->c:Ljava/lang/Object;

    move-object/from16 v27, v3

    check-cast v27, Ljava/lang/Integer;

    iget-object v3, v15, Ln2/l;->d:Ljava/lang/Object;

    move-object/from16 v28, v3

    check-cast v28, Ljava/lang/String;

    iget-object v3, v15, Ln2/l;->f:Ljava/lang/Object;

    move-object/from16 v29, v3

    check-cast v29, Ljava/util/List;

    iget-object v3, v15, Ln2/l;->g:Ljava/lang/Object;

    move-object/from16 v30, v3

    check-cast v30, Lcom/google/android/datatransport/cct/internal/QosTier;

    move-object/from16 v21, v1

    invoke-direct/range {v21 .. v30}, Ln2/n;-><init>(JJLn2/r;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lcom/google/android/datatransport/cct/internal/QosTier;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object v9, v10

    move-object/from16 v1, v16

    move-object/from16 v3, v17

    move-object/from16 v10, v20

    goto/16 :goto_3

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v13, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    move-object/from16 v16, v1

    move-object v10, v9

    const/4 v1, 0x0

    new-instance v3, Ln2/j;

    invoke-direct {v3, v0}, Ln2/j;-><init>(Ljava/util/ArrayList;)V

    const/4 v0, 0x0

    iget-object v4, v2, Lm2/d;->d:Ljava/net/URL;

    if-eqz v14, :cond_16

    :try_start_2
    invoke-static {v14}, Lm2/a;->a([B)Lm2/a;

    move-result-object v7

    iget-object v8, v7, Lm2/a;->b:Ljava/lang/String;

    if-eqz v8, :cond_15

    goto :goto_a

    :cond_15
    move-object v8, v0

    :goto_a
    iget-object v7, v7, Lm2/a;->a:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v7, :cond_17

    :try_start_3
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_c

    :catch_2
    move-exception v0

    :try_start_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid url: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    new-instance v0, Lp2/a;

    sget-object v2, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->FATAL_ERROR:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    const-wide/16 v3, -0x1

    invoke-direct {v0, v2, v3, v4}, Lp2/a;-><init>(Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;J)V

    :goto_b
    move v2, v1

    goto/16 :goto_f

    :cond_16
    move-object v8, v0

    :cond_17
    :goto_c
    :try_start_5
    new-instance v7, Lm2/b;

    invoke-direct {v7, v4, v3, v8}, Lm2/b;-><init>(Ljava/net/URL;Ln2/q;Ljava/lang/String;)V

    new-instance v3, La5/a;

    const/4 v4, 0x3

    invoke-direct {v3, v2, v4}, La5/a;-><init>(Ljava/lang/Object;I)V

    const/4 v2, 0x5

    :cond_18
    invoke-virtual {v3, v7}, La5/a;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lm2/c;

    iget-object v9, v8, Lm2/c;->b:Ljava/net/URL;

    if-eqz v9, :cond_19

    const-string v13, "Following redirect to: %s"

    invoke-static {v9, v12, v13}, Lcom/fasterxml/jackson/annotation/i0;->n(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lm2/b;

    iget-object v13, v7, Lm2/b;->b:Ln2/q;

    iget-object v7, v7, Lm2/b;->c:Ljava/lang/String;

    iget-object v8, v8, Lm2/c;->b:Ljava/net/URL;

    invoke-direct {v9, v8, v13, v7}, Lm2/b;-><init>(Ljava/net/URL;Ln2/q;Ljava/lang/String;)V

    move-object v7, v9

    goto :goto_d

    :cond_19
    move-object v7, v0

    :goto_d
    if-eqz v7, :cond_1a

    add-int/lit8 v2, v2, -0x1

    const/4 v8, 0x1

    if-ge v2, v8, :cond_18

    :cond_1a
    check-cast v4, Lm2/c;

    iget v0, v4, Lm2/c;->a:I

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_1b

    iget-wide v2, v4, Lm2/c;->c:J

    new-instance v0, Lp2/a;

    sget-object v4, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->OK:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    invoke-direct {v0, v4, v2, v3}, Lp2/a;-><init>(Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;J)V

    goto :goto_b

    :cond_1b
    const/16 v2, 0x1f4

    if-ge v0, v2, :cond_1e

    const/16 v2, 0x194

    if-ne v0, v2, :cond_1c

    goto :goto_e

    :cond_1c
    const/16 v2, 0x190

    if-ne v0, v2, :cond_1d

    new-instance v0, Lp2/a;

    sget-object v2, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->INVALID_PAYLOAD:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    const-wide/16 v3, -0x1

    invoke-direct {v0, v2, v3, v4}, Lp2/a;-><init>(Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;J)V

    goto :goto_b

    :cond_1d
    new-instance v0, Lp2/a;

    sget-object v2, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->FATAL_ERROR:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    const-wide/16 v3, -0x1

    invoke-direct {v0, v2, v3, v4}, Lp2/a;-><init>(Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;J)V

    goto :goto_b

    :cond_1e
    :goto_e
    new-instance v0, Lp2/a;

    sget-object v2, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->TRANSIENT_ERROR:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    const-wide/16 v3, -0x1

    invoke-direct {v0, v2, v3, v4}, Lp2/a;-><init>(Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;J)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_b

    :catch_4
    move-exception v0

    const-string v2, "Could not make request to the backend"

    invoke-static {v12, v2, v0}, Lcom/fasterxml/jackson/annotation/i0;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    new-instance v0, Lp2/a;

    sget-object v2, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->TRANSIENT_ERROR:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    const-wide/16 v3, -0x1

    invoke-direct {v0, v2, v3, v4}, Lp2/a;-><init>(Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;J)V

    goto/16 :goto_b

    :goto_f
    sget-object v1, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->TRANSIENT_ERROR:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    iget-object v3, v0, Lp2/a;->a:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    if-ne v3, v1, :cond_1f

    new-instance v0, Ls2/g;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v11

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v6}, Ls2/g;-><init>(Ls2/i;Ljava/lang/Iterable;Lo2/j;J)V

    invoke-virtual {v10, v0}, Lt2/k;->x(Lu2/a;)Ljava/lang/Object;

    const/4 v0, 0x1

    add-int/lit8 v1, p2, 0x1

    move-object/from16 v7, p0

    iget-object v2, v7, Ls2/i;->d:Ls2/l;

    check-cast v2, Ls2/d;

    move-object/from16 v8, p1

    invoke-virtual {v2, v8, v1, v0}, Ls2/d;->a(Lo2/j;IZ)V

    return-void

    :cond_1f
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const/4 v1, 0x1

    new-instance v3, Landroidx/fragment/app/f;

    invoke-direct {v3, v1, v7, v11}, Landroidx/fragment/app/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v10, v3}, Lt2/k;->x(Lu2/a;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->OK:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    iget-object v3, v0, Lp2/a;->a:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    if-ne v3, v1, :cond_21

    iget-wide v0, v0, Lp2/a;->b:J

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    if-eqz v14, :cond_20

    const/4 v2, 0x1

    :cond_20
    if-eqz v2, :cond_24

    new-instance v0, La5/a;

    const/4 v1, 0x5

    invoke-direct {v0, v7, v1}, La5/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v10, v0}, Lt2/k;->x(Lu2/a;)Ljava/lang/Object;

    goto :goto_12

    :cond_21
    sget-object v0, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->INVALID_PAYLOAD:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    if-ne v3, v0, :cond_24

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt2/b;

    iget-object v2, v2, Lt2/b;->c:Lo2/h;

    iget-object v2, v2, Lo2/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    const/4 v3, 0x1

    goto :goto_11

    :cond_22
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    :goto_11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_23
    new-instance v1, Landroidx/fragment/app/f;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v7, v0}, Landroidx/fragment/app/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v10, v1}, Lt2/k;->x(Lu2/a;)Ljava/lang/Object;

    :cond_24
    :goto_12
    move-object/from16 v1, v16

    goto/16 :goto_0

    :cond_25
    move-object v10, v9

    invoke-virtual {v10}, Lt2/k;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v0, La5/a;

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, La5/a;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Lcom/google/firebase/concurrent/h;

    invoke-direct {v2, v4}, Lcom/google/firebase/concurrent/h;-><init>(I)V

    invoke-virtual {v10, v0, v2}, Lt2/k;->t(La5/a;Lcom/google/firebase/concurrent/h;)Ljava/lang/Object;

    :try_start_6
    check-cast v3, Lv2/b;

    invoke-virtual {v3}, Lv2/b;->a()J

    move-result-wide v2

    add-long/2addr v2, v5

    iget-object v0, v7, Ls2/i;->c:Lt2/d;

    check-cast v0, Lt2/k;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lt2/e;

    invoke-direct {v4, v2, v3, v8}, Lt2/e;-><init>(JLo2/j;)V

    invoke-virtual {v0, v4}, Lt2/k;->d(Lt2/i;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_26
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null status"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

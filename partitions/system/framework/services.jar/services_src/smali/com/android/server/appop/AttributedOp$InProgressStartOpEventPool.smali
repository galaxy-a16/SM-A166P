.class public Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;
.super Landroid/util/Pools$SimplePool;
.source "AttributedOp.java"


# instance fields
.field public mOpEventProxyInfoPool:Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;I)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;->mOpEventProxyInfoPool:Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;

    return-void
.end method


# virtual methods
.method public acquire(JJLandroid/os/IBinder;Ljava/lang/String;Ljava/lang/Runnable;ILjava/lang/String;Ljava/lang/String;IIII)Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p8

    invoke-virtual/range {p0 .. p0}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    iget-object v3, v0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;->mOpEventProxyInfoPool:Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;->acquire(ILjava/lang/String;Ljava/lang/String;)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;->mOpEventProxyInfoPool:Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;

    move-object v3, v2

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p11

    move/from16 v12, p12

    move-object v13, v1

    move/from16 v14, p13

    move/from16 v15, p14

    move-object/from16 v16, v0

    invoke-virtual/range {v3 .. v16}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->reinit(JJLandroid/os/IBinder;Ljava/lang/String;Ljava/lang/Runnable;IILandroid/app/AppOpsManager$OpEventProxyInfo;IILandroid/util/Pools$Pool;)V

    return-object v2

    :cond_1
    new-instance v0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    move-object v3, v0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p11

    move-object v12, v1

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    invoke-direct/range {v3 .. v15}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;-><init>(JJLandroid/os/IBinder;Ljava/lang/String;Ljava/lang/Runnable;ILandroid/app/AppOpsManager$OpEventProxyInfo;III)V

    return-object v0
.end method

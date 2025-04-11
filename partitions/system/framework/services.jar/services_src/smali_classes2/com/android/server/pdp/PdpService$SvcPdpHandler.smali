.class public final Lcom/android/server/pdp/PdpService$SvcPdpHandler;
.super Landroid/os/Handler;
.source "PdpService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pdp/PdpService;


# direct methods
.method public constructor <init>(Lcom/android/server/pdp/PdpService;Landroid/os/Looper;)V
    .locals 1

    .line 60
    iput-object p1, p0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 61
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public getCacheEmptySpaceRatio()J
    .locals 4

    const-string/jumbo p0, "sys.pdp.ftc_ratio"

    const-string v0, "-1"

    .line 65
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PDP] BackupFile to Cache Empty Size Ratio, sys.pdp.ftc_ratio= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PdpService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v2, v0

    if-gtz p0, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 77
    iget v1, v1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v1, "[PDP] handleMessage MSG_DISPLAY_PDPTOAST >"

    const-string v3, "PdpService"

    .line 79
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "sys.pdp.last_job"

    const-string v4, "XXXX"

    .line 80
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "ro.boot.carrierid"

    .line 81
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "sys.pdp.toasted"

    .line 82
    invoke-static {v6, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 83
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v2

    const-string v8, "XAC"

    .line 84
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "XAU"

    .line 85
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string/jumbo v10, "toasted"

    .line 86
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    xor-int/2addr v11, v2

    .line 88
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[PDP] "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PDP] pdpInfoChecked : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PDP] pdpCarrierIsXAC : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PDP] pdpCarrierIsXAU : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PDP] pdpToastChecked : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v11, :cond_1a

    if-eqz v4, :cond_1a

    .line 97
    invoke-static {v6, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "[PDP] Prepare Toast"

    .line 98
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "[PDP]\nrestore : narrow success\n\n [ ! ]\n size issue"

    const-string v5, "detect-bkup"

    const-string/jumbo v6, "restore_narrow_suc"

    const-string/jumbo v7, "restore_done"

    const-string/jumbo v10, "restore_fail"

    const-string/jumbo v11, "remove-bkup"

    const-string v12, "backup_narrow_suc"

    const-string v13, "backup_done"

    const-string v14, "backup_fail_etc"

    const-string v15, "backup_fail_cache"

    const-string v2, "backup_fail_BFNE"

    move-object/from16 v16, v3

    const-string/jumbo v3, "setupwizard"

    move-object/from16 v17, v5

    const-string v5, "backup_fail_suw"

    if-nez v8, :cond_e

    if-eqz v9, :cond_1

    goto/16 :goto_2

    .line 125
    :cond_1
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v8, 0x5

    if-nez v5, :cond_c

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_0

    .line 127
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 128
    iget-object v0, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const-string v1, "[PDP]\nback-up : fail\nNo backup file"

    invoke-virtual {v0, v1, v8}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 129
    :cond_3
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 130
    iget-object v0, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const-string v1, "[PDP]\nback-up : fail\n/c partition size"

    invoke-virtual {v0, v1, v8}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 131
    :cond_4
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 132
    iget-object v0, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const-string v1, "[PDP]\nback-up : fail\n ETC"

    invoke-virtual {v0, v1, v8}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 133
    :cond_5
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 134
    iget-object v0, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const-string v1, "[PDP]\nback-up : success"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 135
    :cond_6
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PDP]\nback-up : narrow success\n\n [ ! ]  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->getCacheEmptySpaceRatio()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " % \n size issue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    iget-object v0, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto :goto_1

    .line 139
    :cond_7
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 140
    iget-object v0, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const-string v1, "[PDP]\ndelete the back-up files : done"

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto :goto_1

    .line 141
    :cond_8
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x56

    if-eqz v2, :cond_9

    .line 142
    iget-object v0, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const-string v1, "[PDP]\nrestore : fail\nPlease download a userdata.img file again."

    invoke-virtual {v0, v1, v3}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto :goto_1

    .line 144
    :cond_9
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 145
    iget-object v0, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const-string v1, "[PDP]\nrestore : success"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto :goto_1

    .line 146
    :cond_a
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 147
    iget-object v0, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    invoke-virtual {v0, v4, v3}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto :goto_1

    :cond_b
    move-object/from16 v8, v17

    .line 148
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 149
    iget-object v0, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const-string v1, "[PDP]\nback-up files are detected"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto :goto_1

    .line 126
    :cond_c
    :goto_0
    iget-object v0, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const-string v1, "[PDP]\nback-up : fail\nsetup-wizard [ FINISH ]"

    invoke-virtual {v0, v1, v8}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    :cond_d
    :goto_1
    move-object/from16 v2, v16

    goto/16 :goto_4

    :cond_e
    :goto_2
    move-object/from16 v8, v17

    .line 101
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto/16 :goto_3

    .line 103
    :cond_f
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 104
    iget-object v0, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const-string v1, "[PDP]\n system backup: on\n manual backup: NG [file not exist]"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto :goto_1

    :cond_10
    const/4 v2, 0x1

    .line 105
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 106
    iget-object v0, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const-string v1, "[PDP]\n system backup: on\n manual backup: NG [/c size]"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto :goto_1

    .line 107
    :cond_11
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_12

    .line 108
    iget-object v0, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const-string v1, "[PDP]\n system backup: on\n manual backup: NG ETC"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto :goto_1

    .line 109
    :cond_12
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 110
    iget-object v0, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const-string v1, "[PDP]\n system backup: on\n manual backup: done"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto :goto_1

    .line 111
    :cond_13
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 112
    iget-object v0, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const-string v1, "[PDP]\n system backup: on\n manual backup: [!] narrow success"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto :goto_1

    .line 113
    :cond_14
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 114
    iget-object v0, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const-string v1, "[PDP]\n system backup: on\n manual backup cancel: done"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto :goto_1

    .line 115
    :cond_15
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v0, "[PDP] restore-fail toast is not allowed"

    move-object/from16 v2, v16

    .line 116
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_16
    move-object/from16 v2, v16

    .line 117
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    const-string v0, "[PDP] restore-done toast is not allowed"

    .line 118
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 119
    :cond_17
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 120
    iget-object v0, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    invoke-virtual {v0, v4, v3}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto :goto_4

    .line 121
    :cond_18
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "[PDP] detect-backup toast is not allowed"

    .line 122
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_19
    :goto_3
    move-object/from16 v2, v16

    const-string v0, "[PDP] backup-fail toast is not allowed"

    .line 102
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_1a
    move-object v2, v3

    const-string v0, "[PDP] Already Toasted"

    .line 153
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    :goto_4
    const-string v0, "[PDP] handleMessage MSG_DISPLAY_PDPTOAST <"

    .line 155
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void
.end method

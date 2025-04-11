.class public abstract Lfc/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/gson/internal/e;

.field public static final b:Lcom/google/gson/internal/e;

.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;

.field public static final e:[Ljava/lang/String;

.field public static final f:[Ljava/lang/String;

.field public static final g:Lcom/google/gson/internal/e;

.field public static h:Ljava/lang/String;

.field public static i:I

.field public static final j:Landroidx/emoji2/text/q;

.field public static final k:Lio/reactivex/rxjava3/internal/functions/a;

.field public static final l:Lcom/google/gson/internal/c;

.field public static final m:Lcom/google/gson/internal/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 59

    new-instance v0, Lcom/google/gson/internal/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/gson/internal/e;-><init>(I)V

    sput-object v0, Lfc/k;->a:Lcom/google/gson/internal/e;

    new-instance v0, Lcom/google/gson/internal/e;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/google/gson/internal/e;-><init>(I)V

    sput-object v0, Lfc/k;->b:Lcom/google/gson/internal/e;

    const-string v2, "ga_conversion"

    const-string v3, "engagement_time_msec"

    const-string v4, "exposure_time"

    const-string v5, "ad_event_id"

    const-string v6, "ad_unit_id"

    const-string v7, "ga_error"

    const-string v8, "ga_error_value"

    const-string v9, "ga_error_length"

    const-string v10, "ga_event_origin"

    const-string v11, "ga_screen"

    const-string v12, "ga_screen_class"

    const-string v13, "ga_screen_id"

    const-string v14, "ga_previous_screen"

    const-string v15, "ga_previous_class"

    const-string v16, "ga_previous_id"

    const-string v17, "manual_tracking"

    const-string v18, "message_device_time"

    const-string v19, "message_id"

    const-string v20, "message_name"

    const-string v21, "message_time"

    const-string v22, "message_tracking_id"

    const-string v23, "message_type"

    const-string v24, "previous_app_version"

    const-string v25, "previous_os_version"

    const-string v26, "topic"

    const-string v27, "update_with_analytics"

    const-string v28, "previous_first_open_count"

    const-string v29, "system_app"

    const-string v30, "system_app_update"

    const-string v31, "previous_install_count"

    const-string v32, "ga_event_id"

    const-string v33, "ga_extra_params_ct"

    const-string v34, "ga_group_name"

    const-string v35, "ga_list_length"

    const-string v36, "ga_index"

    const-string v37, "ga_event_name"

    const-string v38, "campaign_info_source"

    const-string v39, "cached_campaign"

    const-string v40, "deferred_analytics_collection"

    const-string v41, "ga_session_number"

    const-string v42, "ga_session_id"

    const-string v43, "campaign_extra_referrer"

    const-string v44, "app_in_background"

    const-string v45, "firebase_feature_rollouts"

    const-string v46, "firebase_conversion"

    const-string v47, "firebase_error"

    const-string v48, "firebase_error_value"

    const-string v49, "firebase_error_length"

    const-string v50, "firebase_event_origin"

    const-string v51, "firebase_screen"

    const-string v52, "firebase_screen_class"

    const-string v53, "firebase_screen_id"

    const-string v54, "firebase_previous_screen"

    const-string v55, "firebase_previous_class"

    const-string v56, "firebase_previous_id"

    const-string v57, "session_number"

    const-string v58, "session_id"

    filled-new-array/range {v2 .. v58}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfc/k;->c:[Ljava/lang/String;

    const-string v1, "_c"

    const-string v2, "_et"

    const-string v3, "_xt"

    const-string v4, "_aeid"

    const-string v5, "_ai"

    const-string v6, "_err"

    const-string v7, "_ev"

    const-string v8, "_el"

    const-string v9, "_o"

    const-string v10, "_sn"

    const-string v11, "_sc"

    const-string v12, "_si"

    const-string v13, "_pn"

    const-string v14, "_pc"

    const-string v15, "_pi"

    const-string v16, "_mst"

    const-string v17, "_ndt"

    const-string v18, "_nmid"

    const-string v19, "_nmn"

    const-string v20, "_nmt"

    const-string v21, "_nmtid"

    const-string v22, "_nmc"

    const-string v23, "_pv"

    const-string v24, "_po"

    const-string v25, "_nt"

    const-string v26, "_uwa"

    const-string v27, "_pfo"

    const-string v28, "_sys"

    const-string v29, "_sysu"

    const-string v30, "_pin"

    const-string v31, "_eid"

    const-string v32, "_epc"

    const-string v33, "_gn"

    const-string v34, "_ll"

    const-string v35, "_i"

    const-string v36, "_en"

    const-string v37, "_cis"

    const-string v38, "_cc"

    const-string v39, "_dac"

    const-string v40, "_sno"

    const-string v41, "_sid"

    const-string v42, "_cer"

    const-string v43, "_aib"

    const-string v44, "_ffr"

    const-string v45, "_c"

    const-string v46, "_err"

    const-string v47, "_ev"

    const-string v48, "_el"

    const-string v49, "_o"

    const-string v50, "_sn"

    const-string v51, "_sc"

    const-string v52, "_si"

    const-string v53, "_pn"

    const-string v54, "_pc"

    const-string v55, "_pi"

    const-string v56, "_sno"

    const-string v57, "_sid"

    filled-new-array/range {v1 .. v57}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfc/k;->d:[Ljava/lang/String;

    const-string v0, "items"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfc/k;->e:[Ljava/lang/String;

    const-string v1, "affiliation"

    const-string v2, "coupon"

    const-string v3, "creative_name"

    const-string v4, "creative_slot"

    const-string v5, "currency"

    const-string v6, "discount"

    const-string v7, "index"

    const-string v8, "item_id"

    const-string v9, "item_brand"

    const-string v10, "item_category"

    const-string v11, "item_category2"

    const-string v12, "item_category3"

    const-string v13, "item_category4"

    const-string v14, "item_category5"

    const-string v15, "item_list_name"

    const-string v16, "item_list_id"

    const-string v17, "item_name"

    const-string v18, "item_variant"

    const-string v19, "location_id"

    const-string v20, "payment_type"

    const-string v21, "price"

    const-string v22, "promotion_id"

    const-string v23, "promotion_name"

    const-string v24, "quantity"

    const-string v25, "shipping"

    const-string v26, "shipping_tier"

    const-string v27, "tax"

    const-string v28, "transaction_id"

    const-string v29, "value"

    const-string v30, "item_list"

    const-string v31, "checkout_step"

    const-string v32, "checkout_option"

    const-string v33, "item_location_id"

    filled-new-array/range {v1 .. v33}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfc/k;->f:[Ljava/lang/String;

    new-instance v0, Lcom/google/gson/internal/e;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Lcom/google/gson/internal/e;-><init>(I)V

    sput-object v0, Lfc/k;->g:Lcom/google/gson/internal/e;

    new-instance v0, Landroidx/emoji2/text/q;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/emoji2/text/q;-><init>(I)V

    sput-object v0, Lfc/k;->j:Landroidx/emoji2/text/q;

    new-instance v0, Lio/reactivex/rxjava3/internal/functions/a;

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/internal/functions/a;-><init>(I)V

    sput-object v0, Lfc/k;->k:Lio/reactivex/rxjava3/internal/functions/a;

    new-instance v0, Lcom/google/gson/internal/c;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/google/gson/internal/c;-><init>(I)V

    sput-object v0, Lfc/k;->l:Lcom/google/gson/internal/c;

    new-instance v0, Lcom/google/gson/internal/d;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/gson/internal/d;-><init>(I)V

    sput-object v0, Lfc/k;->m:Lcom/google/gson/internal/d;

    return-void
.end method

.method public static a()I
    .locals 3

    const-class v0, Landroid/os/Build$VERSION;

    const-string v1, "SEM_PLATFORM_INT"

    invoke-static {v0, v1}, Lh3/a;->o(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lh3/a;->k(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    invoke-static {v1, v0}, Lh3/a;->k(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static b()Ljava/lang/String;
    .locals 5

    const-string v0, "/proc/"

    sget-object v1, Lfc/k;->h:Ljava/lang/String;

    if-nez v1, :cond_2

    sget v1, Lfc/k;->i:I

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    sput v1, Lfc/k;->i:I

    :cond_0
    const/4 v2, 0x0

    if-gtz v1, :cond_1

    goto :goto_3

    :cond_1
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/cmdline"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v3

    goto :goto_1

    :catch_0
    move-object v0, v2

    :goto_0
    move-object v2, v3

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    :goto_1
    invoke-static {v2}, Lg2/m;->d(Ljava/io/BufferedReader;)V

    throw v0

    :catch_1
    move-object v0, v2

    :goto_2
    invoke-static {v2}, Lg2/m;->d(Ljava/io/BufferedReader;)V

    move-object v2, v0

    :goto_3
    sput-object v2, Lfc/k;->h:Ljava/lang/String;

    :cond_2
    sget-object v0, Lfc/k;->h:Ljava/lang/String;

    return-object v0
.end method

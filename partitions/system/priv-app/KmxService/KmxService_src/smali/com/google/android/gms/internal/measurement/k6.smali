.class public final Lcom/google/android/gms/internal/measurement/k6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/j6;


# static fields
.field public static final A:Lcom/google/android/gms/internal/measurement/m3;

.field public static final B:Lcom/google/android/gms/internal/measurement/m3;

.field public static final C:Lcom/google/android/gms/internal/measurement/m3;

.field public static final D:Lcom/google/android/gms/internal/measurement/m3;

.field public static final E:Lcom/google/android/gms/internal/measurement/m3;

.field public static final F:Lcom/google/android/gms/internal/measurement/m3;

.field public static final G:Lcom/google/android/gms/internal/measurement/m3;

.field public static final H:Lcom/google/android/gms/internal/measurement/m3;

.field public static final I:Lcom/google/android/gms/internal/measurement/m3;

.field public static final J:Lcom/google/android/gms/internal/measurement/m3;

.field public static final a:Lcom/google/android/gms/internal/measurement/m3;

.field public static final b:Lcom/google/android/gms/internal/measurement/m3;

.field public static final c:Lcom/google/android/gms/internal/measurement/m3;

.field public static final d:Lcom/google/android/gms/internal/measurement/m3;

.field public static final e:Lcom/google/android/gms/internal/measurement/m3;

.field public static final f:Lcom/google/android/gms/internal/measurement/m3;

.field public static final g:Lcom/google/android/gms/internal/measurement/m3;

.field public static final h:Lcom/google/android/gms/internal/measurement/m3;

.field public static final i:Lcom/google/android/gms/internal/measurement/m3;

.field public static final j:Lcom/google/android/gms/internal/measurement/m3;

.field public static final k:Lcom/google/android/gms/internal/measurement/m3;

.field public static final l:Lcom/google/android/gms/internal/measurement/m3;

.field public static final m:Lcom/google/android/gms/internal/measurement/m3;

.field public static final n:Lcom/google/android/gms/internal/measurement/m3;

.field public static final o:Lcom/google/android/gms/internal/measurement/m3;

.field public static final p:Lcom/google/android/gms/internal/measurement/m3;

.field public static final q:Lcom/google/android/gms/internal/measurement/m3;

.field public static final r:Lcom/google/android/gms/internal/measurement/m3;

.field public static final s:Lcom/google/android/gms/internal/measurement/m3;

.field public static final t:Lcom/google/android/gms/internal/measurement/m3;

.field public static final u:Lcom/google/android/gms/internal/measurement/m3;

.field public static final v:Lcom/google/android/gms/internal/measurement/m3;

.field public static final w:Lcom/google/android/gms/internal/measurement/m3;

.field public static final x:Lcom/google/android/gms/internal/measurement/m3;

.field public static final y:Lcom/google/android/gms/internal/measurement/m3;

.field public static final z:Lcom/google/android/gms/internal/measurement/m3;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    invoke-static {}, Lcom/google/android/gms/internal/measurement/k3;->a()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/n3;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2}, Lcom/google/android/gms/internal/measurement/n3;-><init>(Landroid/net/Uri;ZZ)V

    const-wide/16 v2, 0x2710

    const-string v0, "measurement.ad_id_cache_time"

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/measurement/n3;->a(JLjava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/k6;->a:Lcom/google/android/gms/internal/measurement/m3;

    const-wide/16 v4, 0x64

    const-string v0, "measurement.max_bundles_per_iteration"

    invoke-virtual {v1, v4, v5, v0}, Lcom/google/android/gms/internal/measurement/n3;->a(JLjava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/k6;->b:Lcom/google/android/gms/internal/measurement/m3;

    const-wide/32 v6, 0x5265c00

    const-string v0, "measurement.config.cache_time"

    invoke-virtual {v1, v6, v7, v0}, Lcom/google/android/gms/internal/measurement/n3;->a(JLjava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/k6;->c:Lcom/google/android/gms/internal/measurement/m3;

    const-string v0, "measurement.log_tag"

    const-string v8, "FA"

    invoke-virtual {v1, v0, v8}, Lcom/google/android/gms/internal/measurement/n3;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    const-string v0, "measurement.config.url_authority"

    const-string v8, "app-measurement.com"

    invoke-virtual {v1, v0, v8}, Lcom/google/android/gms/internal/measurement/n3;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/k6;->d:Lcom/google/android/gms/internal/measurement/m3;

    const-string v0, "measurement.config.url_scheme"

    const-string v8, "https"

    invoke-virtual {v1, v0, v8}, Lcom/google/android/gms/internal/measurement/n3;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/k6;->e:Lcom/google/android/gms/internal/measurement/m3;

    const-wide/16 v8, 0x3e8

    const-string v0, "measurement.upload.debug_upload_interval"

    invoke-virtual {v1, v8, v9, v0}, Lcom/google/android/gms/internal/measurement/n3;->a(JLjava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/k6;->f:Lcom/google/android/gms/internal/measurement/m3;

    const-string v0, "measurement.lifetimevalue.max_currency_tracked"

    const-wide/16 v10, 0x4

    invoke-virtual {v1, v10, v11, v0}, Lcom/google/android/gms/internal/measurement/n3;->a(JLjava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/k6;->g:Lcom/google/android/gms/internal/measurement/m3;

    const-wide/32 v10, 0x186a0

    const-string v0, "measurement.store.max_stored_events_per_app"

    invoke-virtual {v1, v10, v11, v0}, Lcom/google/android/gms/internal/measurement/n3;->a(JLjava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/k6;->h:Lcom/google/android/gms/internal/measurement/m3;

    const-string v0, "measurement.experiment.max_ids"

    const-wide/16 v12, 0x32

    invoke-virtual {v1, v12, v13, v0}, Lcom/google/android/gms/internal/measurement/n3;->a(JLjava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/k6;->i:Lcom/google/android/gms/internal/measurement/m3;

    const-string v0, "measurement.audience.filter_result_max_count"

    const-wide/16 v12, 0xc8

    invoke-virtual {v1, v12, v13, v0}, Lcom/google/android/gms/internal/measurement/n3;->a(JLjava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/k6;->j:Lcom/google/android/gms/internal/measurement/m3;

    const-string v0, "measurement.alarm_manager.minimum_interval"

    const-wide/32 v12, 0xea60

    invoke-virtual {v1, v12, v13, v0}, Lcom/google/android/gms/internal/measurement/n3;->a(JLjava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/k6;->k:Lcom/google/android/gms/internal/measurement/m3;

    const-wide/16 v12, 0x1f4

    const-string v0, "measurement.upload.minimum_delay"

    invoke-virtual {v1, v12, v13, v0}, Lcom/google/android/gms/internal/measurement/n3;->a(JLjava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/k6;->l:Lcom/google/android/gms/internal/measurement/m3;

    const-string v0, "measurement.monitoring.sample_period_millis"

    invoke-virtual {v1, v6, v7, v0}, Lcom/google/android/gms/internal/measurement/n3;->a(JLjava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/k6;->m:Lcom/google/android/gms/internal/measurement/m3;

    const-string v0, "measurement.upload.realtime_upload_interval"

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/measurement/n3;->a(JLjava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/k6;->n:Lcom/google/android/gms/internal/measurement/m3;

    const-wide/32 v2, 0x240c8400

    const-string v0, "measurement.upload.refresh_blacklisted_config_interval"

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/measurement/n3;->a(JLjava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/k6;->o:Lcom/google/android/gms/internal/measurement/m3;

    const-wide/32 v14, 0x36ee80

    const-string v0, "measurement.config.cache_time.service"

    invoke-virtual {v1, v14, v15, v0}, Lcom/google/android/gms/internal/measurement/n3;->a(JLjava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    const-string v0, "measurement.service_client.idle_disconnect_millis"

    const-wide/16 v10, 0x1388

    invoke-virtual {v1, v10, v11, v0}, Lcom/google/android/gms/internal/measurement/n3;->a(JLjava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/k6;->p:Lcom/google/android/gms/internal/measurement/m3;

    const-string v0, "measurement.log_tag.service"

    const-string v10, "FA-SVC"

    invoke-virtual {v1, v0, v10}, Lcom/google/android/gms/internal/measurement/n3;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    const-string v0, "measurement.upload.stale_data_deletion_interval"

    invoke-virtual {v1, v6, v7, v0}, Lcom/google/android/gms/internal/measurement/n3;->a(JLjava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/k6;->q:Lcom/google/android/gms/internal/measurement/m3;

    const-string v0, "measurement.sdk.attribution.cache.ttl"

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/measurement/n3;->a(JLjava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/k6;->r:Lcom/google/android/gms/internal/measurement/m3;

    const-string v0, "measurement.redaction.app_instance_id.ttl"

    const-wide/32 v2, 0x6ddd00

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/measurement/n3;->a(JLjava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/k6;->s:Lcom/google/android/gms/internal/measurement/m3;

    const-string v0, "measurement.upload.backoff_period"

    const-wide/32 v2, 0x2932e00

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/measurement/n3;->a(JLjava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/k6;->t:Lcom/google/android/gms/internal/measurement/m3;

    const-string v0, "measurement.upload.initial_upload_delay_time"

    const-wide/16 v2, 0x3a98

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/measurement/n3;->a(JLjava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/k6;->u:Lcom/google/android/gms/internal/measurement/m3;

    const-string v0, "measurement.upload.interval"

    invoke-virtual {v1, v14, v15, v0}, Lcom/google/android/gms/internal/measurement/n3;->a(JLjava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/k6;->v:Lcom/google/android/gms/internal/measurement/m3;

    const-wide/32 v2, 0x10000

    const-string v0, "measurement.upload.max_bundle_size"

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/measurement/n3;->a(JLjava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/k6;->w:Lcom/google/android/gms/internal/measurement/m3;

    const-string v0, "measurement.upload.max_bundles"

    invoke-virtual {v1, v4, v5, v0}, Lcom/google/android/gms/internal/measurement/n3;->a(JLjava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/k6;->x:Lcom/google/android/gms/internal/measurement/m3;

    const-string v0, "measurement.upload.max_conversions_per_day"

    invoke-virtual {v1, v12, v13, v0}, Lcom/google/android/gms/internal/measurement/n3;->a(JLjava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/k6;->y:Lcom/google/android/gms/internal/measurement/m3;

    const-string v0, "measurement.upload.max_error_events_per_day"

    invoke-virtual {v1, v8, v9, v0}, Lcom/google/android/gms/internal/measurement/n3;->a(JLjava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/k6;->z:Lcom/google/android/gms/internal/measurement/m3;

    const-string v0, "measurement.upload.max_events_per_bundle"

    invoke-virtual {v1, v8, v9, v0}, Lcom/google/android/gms/internal/measurement/n3;->a(JLjava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/k6;->A:Lcom/google/android/gms/internal/measurement/m3;

    const-string v0, "measurement.upload.max_events_per_day"

    const-wide/32 v4, 0x186a0

    invoke-virtual {v1, v4, v5, v0}, Lcom/google/android/gms/internal/measurement/n3;->a(JLjava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/k6;->B:Lcom/google/android/gms/internal/measurement/m3;

    const-string v0, "measurement.upload.max_public_events_per_day"

    const-wide/32 v4, 0xc350

    invoke-virtual {v1, v4, v5, v0}, Lcom/google/android/gms/internal/measurement/n3;->a(JLjava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/k6;->C:Lcom/google/android/gms/internal/measurement/m3;

    const-string v0, "measurement.upload.max_queue_time"

    const-wide v4, 0x90321000L

    invoke-virtual {v1, v4, v5, v0}, Lcom/google/android/gms/internal/measurement/n3;->a(JLjava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/k6;->D:Lcom/google/android/gms/internal/measurement/m3;

    const-string v0, "measurement.upload.max_realtime_events_per_day"

    const-wide/16 v4, 0xa

    invoke-virtual {v1, v4, v5, v0}, Lcom/google/android/gms/internal/measurement/n3;->a(JLjava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/k6;->E:Lcom/google/android/gms/internal/measurement/m3;

    const-string v0, "measurement.upload.max_batch_size"

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/measurement/n3;->a(JLjava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/k6;->F:Lcom/google/android/gms/internal/measurement/m3;

    const-string v0, "measurement.upload.retry_count"

    const-wide/16 v2, 0x6

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/measurement/n3;->a(JLjava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/k6;->G:Lcom/google/android/gms/internal/measurement/m3;

    const-string v0, "measurement.upload.retry_time"

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/measurement/n3;->a(JLjava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/k6;->H:Lcom/google/android/gms/internal/measurement/m3;

    const-string v0, "measurement.upload.url"

    const-string v2, "https://app-measurement.com/a"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/measurement/n3;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/k6;->I:Lcom/google/android/gms/internal/measurement/m3;

    const-string v0, "measurement.upload.window_interval"

    invoke-virtual {v1, v14, v15, v0}, Lcom/google/android/gms/internal/measurement/n3;->a(JLjava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/k6;->J:Lcom/google/android/gms/internal/measurement/m3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

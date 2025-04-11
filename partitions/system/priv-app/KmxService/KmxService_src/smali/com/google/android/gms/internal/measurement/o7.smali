.class public final Lcom/google/android/gms/internal/measurement/o7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/n7;


# static fields
.field public static final a:Lcom/google/android/gms/internal/measurement/m3;

.field public static final b:Lcom/google/android/gms/internal/measurement/m3;

.field public static final c:Lcom/google/android/gms/internal/measurement/m3;

.field public static final d:Lcom/google/android/gms/internal/measurement/m3;

.field public static final e:Lcom/google/android/gms/internal/measurement/m3;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/internal/measurement/k3;->a()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/n3;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2}, Lcom/google/android/gms/internal/measurement/n3;-><init>(Landroid/net/Uri;ZZ)V

    const-string v0, "measurement.test.boolean_flag"

    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/internal/measurement/n3;->c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/o7;->a:Lcom/google/android/gms/internal/measurement/m3;

    const-wide/high16 v2, -0x3ff8000000000000L    # -3.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/measurement/m3;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/measurement/m3;-><init>(Lcom/google/android/gms/internal/measurement/n3;Ljava/lang/Double;)V

    sput-object v2, Lcom/google/android/gms/internal/measurement/o7;->b:Lcom/google/android/gms/internal/measurement/m3;

    const-string v0, "measurement.test.int_flag"

    const-wide/16 v2, -0x2

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/measurement/n3;->a(JLjava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/o7;->c:Lcom/google/android/gms/internal/measurement/m3;

    const-string v0, "measurement.test.long_flag"

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/measurement/n3;->a(JLjava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/o7;->d:Lcom/google/android/gms/internal/measurement/m3;

    const-string v0, "measurement.test.string_flag"

    const-string v2, "---"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/measurement/n3;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/o7;->e:Lcom/google/android/gms/internal/measurement/m3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

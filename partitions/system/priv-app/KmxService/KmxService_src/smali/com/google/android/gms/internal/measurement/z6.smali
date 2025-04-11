.class public final Lcom/google/android/gms/internal/measurement/z6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/y6;


# static fields
.field public static final a:Lcom/google/android/gms/internal/measurement/m3;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/measurement/k3;->a()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/n3;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2, v2}, Lcom/google/android/gms/internal/measurement/n3;-><init>(Landroid/net/Uri;ZZ)V

    const-string v0, "measurement.audience.dynamic_filters.oob_fix"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/measurement/n3;->c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/z6;->a:Lcom/google/android/gms/internal/measurement/m3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

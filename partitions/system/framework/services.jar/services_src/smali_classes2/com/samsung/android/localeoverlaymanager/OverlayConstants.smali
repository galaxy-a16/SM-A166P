.class public abstract Lcom/samsung/android/localeoverlaymanager/OverlayConstants;
.super Ljava/lang/Object;
.source "OverlayConstants.java"


# static fields
.field public static final ISO_639_2_TO_639_1_MAPPING:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/localeoverlaymanager/OverlayConstants;->ISO_639_2_TO_639_1_MAPPING:Ljava/util/Map;

    const-string v1, "fil"

    const-string/jumbo v2, "tl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.class public final synthetic Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    check-cast p1, Landroid/media/AudioDeviceAttributes;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->$r8$lambda$pRA9qtXQZAqTJOKJQVb3K6xyI0k(Landroid/media/AudioDeviceAttributes;)Z

    move-result p0

    return p0
.end method

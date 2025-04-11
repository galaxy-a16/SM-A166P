.class public Lcom/android/server/display/config/DisplayConfiguration;
.super Ljava/lang/Object;
.source "DisplayConfiguration.java"


# instance fields
.field public ambientBrightnessChangeThresholds:Lcom/android/server/display/config/Thresholds;

.field public ambientBrightnessChangeThresholdsIdle:Lcom/android/server/display/config/Thresholds;

.field public ambientLightHorizonLong:Ljava/math/BigInteger;

.field public ambientLightHorizonShort:Ljava/math/BigInteger;

.field public autoBrightness:Lcom/android/server/display/config/AutoBrightness;

.field public densityMapping:Lcom/android/server/display/config/DensityMapping;

.field public displayBrightnessChangeThresholds:Lcom/android/server/display/config/Thresholds;

.field public displayBrightnessChangeThresholdsIdle:Lcom/android/server/display/config/Thresholds;

.field public highBrightnessMode:Lcom/android/server/display/config/HighBrightnessMode;

.field public lightSensor:Lcom/android/server/display/config/SensorDetails;

.field public name:Ljava/lang/String;

.field public proxSensor:Lcom/android/server/display/config/SensorDetails;

.field public quirks:Lcom/android/server/display/config/DisplayQuirks;

.field public refreshRate:Lcom/android/server/display/config/RefreshRateConfigs;

.field public screenBrightnessDefault:Ljava/math/BigDecimal;

.field public screenBrightnessMap:Lcom/android/server/display/config/NitsMap;

.field public screenBrightnessRampDecreaseMaxMillis:Ljava/math/BigInteger;

.field public screenBrightnessRampFastDecrease:Ljava/math/BigDecimal;

.field public screenBrightnessRampFastIncrease:Ljava/math/BigDecimal;

.field public screenBrightnessRampIncreaseMaxMillis:Ljava/math/BigInteger;

.field public screenBrightnessRampSlowDecrease:Ljava/math/BigDecimal;

.field public screenBrightnessRampSlowIncrease:Ljava/math/BigDecimal;

.field public screenOffBrightnessSensor:Lcom/android/server/display/config/SensorDetails;

.field public screenOffBrightnessSensorValueToLux:Lcom/android/server/display/config/IntegerArray;

.field public thermalThrottling:Lcom/android/server/display/config/ThermalThrottling;

.field public usiVersion:Lcom/android/server/display/config/UsiVersion;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/DisplayConfiguration;
    .locals 4

    .line 422
    new-instance v0, Lcom/android/server/display/config/DisplayConfiguration;

    invoke-direct {v0}, Lcom/android/server/display/config/DisplayConfiguration;-><init>()V

    .line 424
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 426
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_1b

    if-eq v1, v3, :cond_1b

    .line 428
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 429
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "name"

    .line 430
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 431
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 433
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setName(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "densityMapping"

    .line 434
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 435
    invoke-static {p0}, Lcom/android/server/display/config/DensityMapping;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/DensityMapping;

    move-result-object v1

    .line 436
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setDensityMapping(Lcom/android/server/display/config/DensityMapping;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "screenBrightnessMap"

    .line 437
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 438
    invoke-static {p0}, Lcom/android/server/display/config/NitsMap;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/NitsMap;

    move-result-object v1

    .line 439
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessMap(Lcom/android/server/display/config/NitsMap;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "screenBrightnessDefault"

    .line 440
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 441
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 442
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessDefault(Ljava/math/BigDecimal;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "thermalThrottling"

    .line 444
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 445
    invoke-static {p0}, Lcom/android/server/display/config/ThermalThrottling;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/ThermalThrottling;

    move-result-object v1

    .line 446
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setThermalThrottling(Lcom/android/server/display/config/ThermalThrottling;)V

    goto :goto_0

    :cond_5
    const-string v2, "highBrightnessMode"

    .line 447
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 448
    invoke-static {p0}, Lcom/android/server/display/config/HighBrightnessMode;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/HighBrightnessMode;

    move-result-object v1

    .line 449
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setHighBrightnessMode(Lcom/android/server/display/config/HighBrightnessMode;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v2, "quirks"

    .line 450
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 451
    invoke-static {p0}, Lcom/android/server/display/config/DisplayQuirks;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/DisplayQuirks;

    move-result-object v1

    .line 452
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setQuirks(Lcom/android/server/display/config/DisplayQuirks;)V

    goto/16 :goto_0

    :cond_7
    const-string v2, "autoBrightness"

    .line 453
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 454
    invoke-static {p0}, Lcom/android/server/display/config/AutoBrightness;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/AutoBrightness;

    move-result-object v1

    .line 455
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setAutoBrightness(Lcom/android/server/display/config/AutoBrightness;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v2, "refreshRate"

    .line 456
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 457
    invoke-static {p0}, Lcom/android/server/display/config/RefreshRateConfigs;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/RefreshRateConfigs;

    move-result-object v1

    .line 458
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setRefreshRate(Lcom/android/server/display/config/RefreshRateConfigs;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v2, "screenBrightnessRampFastDecrease"

    .line 459
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 460
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 461
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 462
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampFastDecrease(Ljava/math/BigDecimal;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v2, "screenBrightnessRampFastIncrease"

    .line 463
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 464
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 465
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 466
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampFastIncrease(Ljava/math/BigDecimal;)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v2, "screenBrightnessRampSlowDecrease"

    .line 467
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 468
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 469
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 470
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampSlowDecrease(Ljava/math/BigDecimal;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v2, "screenBrightnessRampSlowIncrease"

    .line 471
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 472
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 473
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampSlowIncrease(Ljava/math/BigDecimal;)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v2, "screenBrightnessRampIncreaseMaxMillis"

    .line 475
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 476
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 477
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampIncreaseMaxMillis(Ljava/math/BigInteger;)V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v2, "screenBrightnessRampDecreaseMaxMillis"

    .line 479
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 480
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 481
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 482
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampDecreaseMaxMillis(Ljava/math/BigInteger;)V

    goto/16 :goto_0

    :cond_f
    const-string v2, "lightSensor"

    .line 483
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 484
    invoke-static {p0}, Lcom/android/server/display/config/SensorDetails;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/SensorDetails;

    move-result-object v1

    .line 485
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setLightSensor(Lcom/android/server/display/config/SensorDetails;)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v2, "screenOffBrightnessSensor"

    .line 486
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 487
    invoke-static {p0}, Lcom/android/server/display/config/SensorDetails;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/SensorDetails;

    move-result-object v1

    .line 488
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenOffBrightnessSensor(Lcom/android/server/display/config/SensorDetails;)V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v2, "proxSensor"

    .line 489
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 490
    invoke-static {p0}, Lcom/android/server/display/config/SensorDetails;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/SensorDetails;

    move-result-object v1

    .line 491
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setProxSensor(Lcom/android/server/display/config/SensorDetails;)V

    goto/16 :goto_0

    :cond_12
    const-string v2, "ambientLightHorizonLong"

    .line 492
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 493
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 494
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/DisplayConfiguration;->setAmbientLightHorizonLong(Ljava/math/BigInteger;)V

    goto/16 :goto_0

    :cond_13
    const-string v2, "ambientLightHorizonShort"

    .line 496
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 497
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 498
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/DisplayConfiguration;->setAmbientLightHorizonShort(Ljava/math/BigInteger;)V

    goto/16 :goto_0

    :cond_14
    const-string v2, "displayBrightnessChangeThresholds"

    .line 500
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 501
    invoke-static {p0}, Lcom/android/server/display/config/Thresholds;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/Thresholds;

    move-result-object v1

    .line 502
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setDisplayBrightnessChangeThresholds(Lcom/android/server/display/config/Thresholds;)V

    goto/16 :goto_0

    :cond_15
    const-string v2, "ambientBrightnessChangeThresholds"

    .line 503
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 504
    invoke-static {p0}, Lcom/android/server/display/config/Thresholds;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/Thresholds;

    move-result-object v1

    .line 505
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setAmbientBrightnessChangeThresholds(Lcom/android/server/display/config/Thresholds;)V

    goto/16 :goto_0

    :cond_16
    const-string v2, "displayBrightnessChangeThresholdsIdle"

    .line 506
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 507
    invoke-static {p0}, Lcom/android/server/display/config/Thresholds;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/Thresholds;

    move-result-object v1

    .line 508
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setDisplayBrightnessChangeThresholdsIdle(Lcom/android/server/display/config/Thresholds;)V

    goto/16 :goto_0

    :cond_17
    const-string v2, "ambientBrightnessChangeThresholdsIdle"

    .line 509
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 510
    invoke-static {p0}, Lcom/android/server/display/config/Thresholds;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/Thresholds;

    move-result-object v1

    .line 511
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setAmbientBrightnessChangeThresholdsIdle(Lcom/android/server/display/config/Thresholds;)V

    goto/16 :goto_0

    :cond_18
    const-string/jumbo v2, "screenOffBrightnessSensorValueToLux"

    .line 512
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 513
    invoke-static {p0}, Lcom/android/server/display/config/IntegerArray;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/IntegerArray;

    move-result-object v1

    .line 514
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenOffBrightnessSensorValueToLux(Lcom/android/server/display/config/IntegerArray;)V

    goto/16 :goto_0

    :cond_19
    const-string/jumbo v2, "usiVersion"

    .line 515
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 516
    invoke-static {p0}, Lcom/android/server/display/config/UsiVersion;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/UsiVersion;

    move-result-object v1

    .line 517
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setUsiVersion(Lcom/android/server/display/config/UsiVersion;)V

    goto/16 :goto_0

    .line 519
    :cond_1a
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_1b
    if-ne v1, v3, :cond_1c

    return-object v0

    .line 523
    :cond_1c
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "DisplayConfiguration is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getAmbientBrightnessChangeThresholds()Lcom/android/server/display/config/Thresholds;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientBrightnessChangeThresholds:Lcom/android/server/display/config/Thresholds;

    return-object p0
.end method

.method public final getAmbientBrightnessChangeThresholdsIdle()Lcom/android/server/display/config/Thresholds;
    .locals 0

    .line 377
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientBrightnessChangeThresholdsIdle:Lcom/android/server/display/config/Thresholds;

    return-object p0
.end method

.method public final getAmbientLightHorizonLong()Ljava/math/BigInteger;
    .locals 0

    .line 302
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientLightHorizonLong:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final getAmbientLightHorizonShort()Ljava/math/BigInteger;
    .locals 0

    .line 317
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientLightHorizonShort:Ljava/math/BigInteger;

    return-object p0
.end method

.method public getAutoBrightness()Lcom/android/server/display/config/AutoBrightness;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->autoBrightness:Lcom/android/server/display/config/AutoBrightness;

    return-object p0
.end method

.method public final getDensityMapping()Lcom/android/server/display/config/DensityMapping;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->densityMapping:Lcom/android/server/display/config/DensityMapping;

    return-object p0
.end method

.method public final getDisplayBrightnessChangeThresholds()Lcom/android/server/display/config/Thresholds;
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->displayBrightnessChangeThresholds:Lcom/android/server/display/config/Thresholds;

    return-object p0
.end method

.method public final getDisplayBrightnessChangeThresholdsIdle()Lcom/android/server/display/config/Thresholds;
    .locals 0

    .line 362
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->displayBrightnessChangeThresholdsIdle:Lcom/android/server/display/config/Thresholds;

    return-object p0
.end method

.method public getHighBrightnessMode()Lcom/android/server/display/config/HighBrightnessMode;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->highBrightnessMode:Lcom/android/server/display/config/HighBrightnessMode;

    return-object p0
.end method

.method public final getLightSensor()Lcom/android/server/display/config/SensorDetails;
    .locals 0

    .line 257
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->lightSensor:Lcom/android/server/display/config/SensorDetails;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getProxSensor()Lcom/android/server/display/config/SensorDetails;
    .locals 0

    .line 287
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->proxSensor:Lcom/android/server/display/config/SensorDetails;

    return-object p0
.end method

.method public getQuirks()Lcom/android/server/display/config/DisplayQuirks;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->quirks:Lcom/android/server/display/config/DisplayQuirks;

    return-object p0
.end method

.method public getRefreshRate()Lcom/android/server/display/config/RefreshRateConfigs;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->refreshRate:Lcom/android/server/display/config/RefreshRateConfigs;

    return-object p0
.end method

.method public final getScreenBrightnessDefault()Ljava/math/BigDecimal;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessDefault:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public final getScreenBrightnessMap()Lcom/android/server/display/config/NitsMap;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessMap:Lcom/android/server/display/config/NitsMap;

    return-object p0
.end method

.method public final getScreenBrightnessRampDecreaseMaxMillis()Ljava/math/BigInteger;
    .locals 0

    .line 242
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampDecreaseMaxMillis:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final getScreenBrightnessRampFastDecrease()Ljava/math/BigDecimal;
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastDecrease:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public final getScreenBrightnessRampFastIncrease()Ljava/math/BigDecimal;
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastIncrease:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public final getScreenBrightnessRampIncreaseMaxMillis()Ljava/math/BigInteger;
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampIncreaseMaxMillis:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final getScreenBrightnessRampSlowDecrease()Ljava/math/BigDecimal;
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowDecrease:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public final getScreenBrightnessRampSlowIncrease()Ljava/math/BigDecimal;
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowIncrease:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public final getScreenOffBrightnessSensor()Lcom/android/server/display/config/SensorDetails;
    .locals 0

    .line 272
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenOffBrightnessSensor:Lcom/android/server/display/config/SensorDetails;

    return-object p0
.end method

.method public final getScreenOffBrightnessSensorValueToLux()Lcom/android/server/display/config/IntegerArray;
    .locals 0

    .line 392
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenOffBrightnessSensorValueToLux:Lcom/android/server/display/config/IntegerArray;

    return-object p0
.end method

.method public final getThermalThrottling()Lcom/android/server/display/config/ThermalThrottling;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->thermalThrottling:Lcom/android/server/display/config/ThermalThrottling;

    return-object p0
.end method

.method public final getUsiVersion()Lcom/android/server/display/config/UsiVersion;
    .locals 0

    .line 407
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->usiVersion:Lcom/android/server/display/config/UsiVersion;

    return-object p0
.end method

.method public final setAmbientBrightnessChangeThresholds(Lcom/android/server/display/config/Thresholds;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientBrightnessChangeThresholds:Lcom/android/server/display/config/Thresholds;

    return-void
.end method

.method public final setAmbientBrightnessChangeThresholdsIdle(Lcom/android/server/display/config/Thresholds;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientBrightnessChangeThresholdsIdle:Lcom/android/server/display/config/Thresholds;

    return-void
.end method

.method public final setAmbientLightHorizonLong(Ljava/math/BigInteger;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientLightHorizonLong:Ljava/math/BigInteger;

    return-void
.end method

.method public final setAmbientLightHorizonShort(Ljava/math/BigInteger;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientLightHorizonShort:Ljava/math/BigInteger;

    return-void
.end method

.method public setAutoBrightness(Lcom/android/server/display/config/AutoBrightness;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->autoBrightness:Lcom/android/server/display/config/AutoBrightness;

    return-void
.end method

.method public final setDensityMapping(Lcom/android/server/display/config/DensityMapping;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->densityMapping:Lcom/android/server/display/config/DensityMapping;

    return-void
.end method

.method public final setDisplayBrightnessChangeThresholds(Lcom/android/server/display/config/Thresholds;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->displayBrightnessChangeThresholds:Lcom/android/server/display/config/Thresholds;

    return-void
.end method

.method public final setDisplayBrightnessChangeThresholdsIdle(Lcom/android/server/display/config/Thresholds;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->displayBrightnessChangeThresholdsIdle:Lcom/android/server/display/config/Thresholds;

    return-void
.end method

.method public setHighBrightnessMode(Lcom/android/server/display/config/HighBrightnessMode;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->highBrightnessMode:Lcom/android/server/display/config/HighBrightnessMode;

    return-void
.end method

.method public final setLightSensor(Lcom/android/server/display/config/SensorDetails;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->lightSensor:Lcom/android/server/display/config/SensorDetails;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->name:Ljava/lang/String;

    return-void
.end method

.method public final setProxSensor(Lcom/android/server/display/config/SensorDetails;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->proxSensor:Lcom/android/server/display/config/SensorDetails;

    return-void
.end method

.method public setQuirks(Lcom/android/server/display/config/DisplayQuirks;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->quirks:Lcom/android/server/display/config/DisplayQuirks;

    return-void
.end method

.method public setRefreshRate(Lcom/android/server/display/config/RefreshRateConfigs;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->refreshRate:Lcom/android/server/display/config/RefreshRateConfigs;

    return-void
.end method

.method public final setScreenBrightnessDefault(Ljava/math/BigDecimal;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessDefault:Ljava/math/BigDecimal;

    return-void
.end method

.method public final setScreenBrightnessMap(Lcom/android/server/display/config/NitsMap;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessMap:Lcom/android/server/display/config/NitsMap;

    return-void
.end method

.method public final setScreenBrightnessRampDecreaseMaxMillis(Ljava/math/BigInteger;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampDecreaseMaxMillis:Ljava/math/BigInteger;

    return-void
.end method

.method public final setScreenBrightnessRampFastDecrease(Ljava/math/BigDecimal;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastDecrease:Ljava/math/BigDecimal;

    return-void
.end method

.method public final setScreenBrightnessRampFastIncrease(Ljava/math/BigDecimal;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastIncrease:Ljava/math/BigDecimal;

    return-void
.end method

.method public final setScreenBrightnessRampIncreaseMaxMillis(Ljava/math/BigInteger;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampIncreaseMaxMillis:Ljava/math/BigInteger;

    return-void
.end method

.method public final setScreenBrightnessRampSlowDecrease(Ljava/math/BigDecimal;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowDecrease:Ljava/math/BigDecimal;

    return-void
.end method

.method public final setScreenBrightnessRampSlowIncrease(Ljava/math/BigDecimal;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowIncrease:Ljava/math/BigDecimal;

    return-void
.end method

.method public final setScreenOffBrightnessSensor(Lcom/android/server/display/config/SensorDetails;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenOffBrightnessSensor:Lcom/android/server/display/config/SensorDetails;

    return-void
.end method

.method public final setScreenOffBrightnessSensorValueToLux(Lcom/android/server/display/config/IntegerArray;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenOffBrightnessSensorValueToLux:Lcom/android/server/display/config/IntegerArray;

    return-void
.end method

.method public final setThermalThrottling(Lcom/android/server/display/config/ThermalThrottling;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->thermalThrottling:Lcom/android/server/display/config/ThermalThrottling;

    return-void
.end method

.method public final setUsiVersion(Lcom/android/server/display/config/UsiVersion;)V
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->usiVersion:Lcom/android/server/display/config/UsiVersion;

    return-void
.end method
